variable "AWS_REGION" {
    default = "us-west-1"
}

variable "AMIS" {
    type = map(string)
    default = {
        us-west-1 = "ami-0ec9faf93ed51c4e0"
    }
}