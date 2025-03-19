resource "aws_instance" "was" {
    ami = "ami-0077297a838d6761d"
    instance_type = "t2.micro"
    subnet_id = var.public_subnet_id
    vpc_security_group_ids = [aws_security_group.was_sg.id]
    key_name = "ubuntu_river"

    user_data = <<-EOF
        #!/bin/bash
        sudo apt-get update
        sudo apt-get install -y nginx
        sudo systemctl enable nginx
        sudo systemctl start nginx
        sudo systemctl restart nginx
        EOF
}

resource "aws_security_group" "was_sg" {
    name = "was-sg-river"
    vpc_id = var.vpc_id
    ingress {
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    ingress {
        from_port = 22
        to_port = 22
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