variable "my_access_key" {
  description = "Access-key-for-AWS"
  default = "no_access_key_value_found"
}
 
variable "my_secret_key" {
  description = "Secret-key-for-AWS"
  default = "no_secret_key_value_found"
}
 
output "access_key_is" {
  value = var.my_access_key
}
 
output "secret_key_is" {
  value = var.my_secret_key
}
 
provider "aws" {
	region = "us-east-1"
	access_key = var.my_access_key
	secret_key = var.my_secret_key
}

resource "aws_security_group" "instance" {
	name = "terraform-tcp-security-group"
	
	ingress {
		from_port = 80
		to_port = 80
		protocol = "tcp"
		cidr_blocks = ["0.0.0.0/0"]
	}
 
    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
}

resource "aws_instance" "ec2_1" {
	ami = "ami-0947d2ba12ee1ff75"
	instance_type = "t2.micro"

    tags = {
		Name = "My first EC2 using Terraform"
	}

    user_data = <<-EOF
	        #!/bin/bash
		    sudo yum update -y
		    sudo yum -y install httpd -y
		    sudo service httpd start
		    echo "<h2>This is the first EC2 $(hostname -f)</h2>" > /var/www/html/index.html
		    EOF
    
    vpc_security_group_ids = [aws_security_group.instance.id]
}

resource "aws_instance" "ec2_2" {
	ami = "ami-0947d2ba12ee1ff75"
	instance_type = "t2.micro"

    tags = {
		Name = "My second EC2 using Terraform"
	}

    user_data = <<-EOF
	        #!/bin/bash
		    sudo yum update -y
		    sudo yum -y install httpd -y
		    sudo service httpd start
		    echo "<h2>This is the second EC2 $(hostname -f)</h2>" > /var/www/html/index.html
		    EOF
    
    vpc_security_group_ids = [aws_security_group.instance.id]
}

resource "aws_instance" "ec2_3" {
	ami = "ami-0947d2ba12ee1ff75"
	instance_type = "t2.micro"

    tags = {
		Name = "My third EC2 using Terraform"
	}

    user_data = <<-EOF
	        #!/bin/bash
		    sudo yum update -y
		    sudo yum -y install httpd -y
		    sudo service httpd start
		    echo "<h2>This is the third EC2 $(hostname -f)</h2>" > /var/www/html/index.html
		    EOF
    
    vpc_security_group_ids = [aws_security_group.instance.id]
}