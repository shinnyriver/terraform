resource "aws_instance" "was" {
    ami = "ami-0077297a838d6761d"
    instance_type = "t2.micro"
    vpc_security_group_ids = [aws_security_group.was_sg.id]

    user_data = <<-EOF
        #!/bin/bash
        sudo apt-get update && sudo apt-get install nginx -y
        sudo systemctl enable nginx
        EOF
    
}

resource "aws_security_group" "was_sg" {
  name = "was-sg-river"
  ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}