
variable "aws_access_key" {
  default = "22"
}

variable "aws_secret_key" {
  default = "22"
}

provider "aws" {
    region = "us-east-1"
    access_key = var.aws_access_key
    secret_key = var.aws_secret_key 
}

resource "aws_sqs_queue" "example_queue" {
    name = "my-example-queue"
}

