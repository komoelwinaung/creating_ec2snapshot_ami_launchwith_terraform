resource "aws_ami" "example" {
  name                = "new-ami"
  virtualization_type = "hvm"
  root_device_name    = "/dev/xvda"

  ebs_block_device {
    device_name = "/dev/xvda"
    snapshot_id = "snap-00XXba2cef301"
    volume_size = 8
  }
}
