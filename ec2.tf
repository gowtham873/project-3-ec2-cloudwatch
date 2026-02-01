data "aws_ami" "amazon_linux" {

  most_recent = true

  owners      = ["amazon"]



  filter {

    name   = "name"

    values = ["amzn2-ami-hvm-*-x86_64-gp2"]

  }



  filter {

    name   = "virtualization-type"

    values = ["hvm"]

  }

}



resource "aws_instance" "monitor_ec2" {

  ami           = data.aws_ami.amazon_linux.id

  instance_type = "t3.micro"



  tags = {

    Name = "CloudWatch-Monitor-EC2"

  }

}


