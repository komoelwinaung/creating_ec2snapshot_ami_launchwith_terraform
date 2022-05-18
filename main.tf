terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

resource "aws_ebs_snapshot" "example_snapshot" {
  volume_id = "vol-e4xxe404"

  tags = {
    Name = "new_snap_web"
  }
}
