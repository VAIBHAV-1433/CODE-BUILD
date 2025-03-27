variable "iam_username" {
  type = string
  default = "terraform-user"
}
variable "iam_groupname" {
  type = string
  default = "terraform-gropu"
}
variable "vpc_name" {
  type = string
  default = "terraform-vpc"
}
variable "vpc_cidr" {
    type = string
    default = "10.0.0.0/16"
}
variable "s3_bucket_name" {
    type =string
    default = "ACCCCCCCCCC-TERRAFORM-bucket"  
}