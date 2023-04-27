resource "aws_eks_cluster" "eks"{

 name   = var.cluster-name

 role_arn = var.if_role_exists ?  var.eks_existing_role : aws_iam_role.eks[0].arn 
 version = var.k8s-version



 vpc_config {

  subnet_ids = var.subnet_id

 }

 # Ensure that IAM Role permissions are created before and deleted after EKS Cluster handling.

 # Otherwise, EKS will not be able to properly delete EKS managed EC2 infrastructure such as Security Groups.

 depends_on = [

  aws_iam_role_policy_attachment.eks-AmazonEKSClusterPolicy,

  #aws_iam_role_policy_attachment.example-AmazonEKSVPCResourceController,

 ]

}

data "aws_iam_policy_document" "assume_role" {

 statement {

  effect = "Allow"




  principals {

   type    = "Service"

   identifiers = ["eks.amazonaws.com"]

  }




  actions = ["sts:AssumeRole"]

 }

}

resource "aws_iam_role" "eks" {

count = var.if_role_exists ? 0 : 1

 

 name        = var.aws_iam_role_eks_name

 assume_role_policy = data.aws_iam_policy_document.assume_role.json


}

resource "aws_iam_role_policy_attachment" "eks-AmazonEKSClusterPolicy" {

count = var.if_role_exists ? 0 : 1

 policy_arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"

 role    = aws_iam_role.eks[0].name

}