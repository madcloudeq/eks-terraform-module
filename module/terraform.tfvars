region = "eu-central-1"
cluster_variable =  {
    "0" = {
        cluster-name = "eks_terraform_cluster"
        k8s-version = "1.25"
        subnet_id = ["subnet-1234567890", "subnet-1234567890", "subnet-1234567890", "subnet-1234567890", "subnet-1234567890", "subnet-1234567890"]
        aws_iam_role_eks_name = "eks_cluster_role"
        if_role_exists = true
        eks_existing_role = "arn:aws:iam::1234567890:role/terraform-eks-cluster-role"
    }

}
nodegroup_variable={
    "0" = {
instance_type = ["t2.micro"]
node_group_name = "eks_terraform_nodegroup"
desired_size = 1
max_size = 2
min_size = 1
max_unavailable = 1
subnet_id = ["subnet-1234567890", "subnet-1234567890", "subnet-1234567890", "subnet-1234567890", "subnet-1234567890", "subnet-1234567890"]
aws_iam_role_name = "eks_nodegroup_role"
if_nodegroup_role_exists= true
eks_nodegroup_existing_role = "arn:aws:iam::1234567890:role/terraform-workernode-role"
    }

}