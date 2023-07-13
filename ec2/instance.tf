resource "aws_instance" "challenge" {
  ami           = var.AMIS[var.AWS_REGION]
  instance_type = "t2.micro"
  provisioner "local-exec" {
    command = "echo ${aws_instance.challenge.private_ip} >> private_ips.txt"
  }

  # the VPC subnet
  subnet_id = aws_subnet.main-public-1.id

  # the security group
  vpc_security_group_ids = [aws_security_group.challenge-instance.id]

  # the public SSH key
  key_name = aws_key_pair.mykeypair.key_name
}

output "ip" {
  value = aws_instance.challenge.public_ip
  }

resource "aws_ebs_volume" "ebs-volume-1" {
  availability_zone = "eu-west-1a"
  size              = 50
  type              = "gp3"
  tags = {
    Name = "extra volume data"
  }
}

resource "aws_volume_attachment" "ebs-volume-1-attachment" {
  device_name                    = "/dev/xvdh"
  volume_id                      = aws_ebs_volume.ebs-volume-1.id
  instance_id                    = aws_instance.challenge.id
  stop_instance_before_detaching = true
}
