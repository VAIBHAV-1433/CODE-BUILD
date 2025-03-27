
resource "aws_iam_user" "user-1" {
  name = var.iam_username
}

resource "aws_iam_group" "group-1" {
  name = var.iam_groupname
}


resource "aws_iam_group_membership" "group_membership" {
  name  = "example-group-membership"
  users = [aws_iam_user.user-1]
  group = aws_iam_group.group-1.name
}


resource "aws_vpc" "example_vpc" {
  cidr_block = var.vpc_cidr

  tags = {
    Name = "My-vpc"
  }
}


resource "aws_s3_bucket" "example_bucket" {
  bucket = var.s3_bucket_name 

  tags = {
    Name = "terraform-bucket"
  }
}
