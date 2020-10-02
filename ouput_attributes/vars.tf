variable "AWS_ACCESS_KEY" {}

variable "AWS_SECRET_KEY" {}

variable "AWS_REGION" {
    default = "us-west-1"
}

variable "AMIS" {
    type = map(string)
    default = {
        us-west-1 = "ami-0ec9faf93ed51c4e0"
    }
}

variable "PATH_TO_PRIVATE_KEY" {
    default = "mykey"
}

variable "PATH_TO_PUBLIC_KEY" {
    default = "mykey.pub"
}

variable "INSTANCE_USERNAME" {
    default = "ubuntu"
}