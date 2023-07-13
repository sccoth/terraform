variable "AWS_REGION" {
  default = "eu-west-1"
}

variable "PATH_TO_PRIVATE_KEY" {
  default = "mykey"
}

variable "PATH_TO_PUBLIC_KEY" {
  default = "mykey.pub"
}

variable "AMIS" {
  type = map(string)
  default = {
    us-east-1 = "ami-053b0d53c279acc90"
    us-west-1 = "ami-0f8e81a3da6e2510a"
    eu-west-1 = "ami-01dd271720c1ba44f"
  }
}

