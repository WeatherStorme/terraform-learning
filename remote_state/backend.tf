terraform {
    backend "s3" {
        bucket = "terraform-state-324nlkae"
        key = "terraform/remote_state"
    }
}