variable "cluster_name" {
	type = string
#	default = "gg-wiz-tasky-2"
}

variable "cluster_role_arn" {
	type = string
#	default = "arn:aws:iam::225989335412:role/AmazonEKSAutoClusterRole"
}

variable "node_role_arn" {
	type = string
#	default = "arn:aws:iam::225989335412:role/AmazonEKSAutoClusterRole"
}

variable "subnet_ids" {
	type = list(string)
#	default = ["subnet-02239372f0e7d8907", "subnet-0f8d0549064449cce"]
}
