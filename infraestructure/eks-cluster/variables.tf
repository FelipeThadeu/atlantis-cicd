variable "region" {
  default = "us-east-1"
}

variable "cluster_name" {
  default = "demo-cluster"
}

variable "vpc_id" {}

variable "subnets" {
  type = list(string)
}