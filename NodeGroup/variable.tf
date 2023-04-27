
variable instance_type{
    type = list
//    default = ["t2.micro"]
}

variable node_group_name{
    type = string
 //   default = "abc"
}

variable desired_size{
    type = number
//    default =  1
}

variable max_size{
    type = number
//    default =  2
}

variable min_size{
    type = number
//    default = 1
}

variable max_unavailable{
    type = number
//    default = 1
}


variable subnet_id{
    type = list
//    default = ["abc-1278900987654"]
}

variable aws_iam_role_name{
    type = string
 //   default =  "abc"
}
variable "cluster_name"{
    type = string
//    default = "abc"
}

variable "if_nodegroup_role_exists" {
  type = bool
//  default = true
}

variable "eks_nodegroup_existing_role" {
  type = string
//  default = "arn:aws:iam::676634049556:role/nikita-eks-role"
}
