
variable "cluster-name"{
    type = string
//    default = "abc"
}

variable "k8s-version"{
    type = string
//    default = 1.25
}

variable "aws_iam_role_eks_name"{
    type = string
//    default = "abc"
}

variable "subnet_id" {
    type = list
//    default = ["abc-1234567890"]
}

variable "if_role_exists" {
    type = bool
//    default = true
}

variable "eks_existing_role"{
    type = string
//    default = "arn:aws:iam::676634049556:role/nikita-eks-role"
}