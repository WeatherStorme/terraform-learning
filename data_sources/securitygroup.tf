data "aws_ip_ranges" "us_ec2" {
    regions = ["us-west-1", "us-east-1"]
    services = ["ec2"]
}

resource "aws_security_group" "from_us" {
    name = "from_us"

    ingress {
        from_port = "443"
        to_port = "443"
        protocol = "tcp"
        cidr_blocks = slice(data.aws_ip_ranges.us_ec2.cidr_blocks, 0, 50)
    }

    tags = {
        CreateData = data.aws_ip_ranges.us_ec2.create_date
        SyncToken = data.aws_ip_ranges.us_ec2.sync_token
    }
}