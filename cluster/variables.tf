variable "server_port" {
  description = "Webserver's HTTP port"
  type = number
  default = 80
}

variable "my_ip" {
    description = "My public IP"
    type = string
    default = "0.0.0.0/0"
}

variable "vpc_id" {
    description = "VPC ID"
    type = string
}

variable "public_subnet1_id" {
    description = "Public Subnet 1 ID"
    type = string
}

variable "public_subnet2_id" {
    description = "Public Subnet 2 ID"
    type = string
}

variable "public_subnet1_cidr" {
    description = "Public Subnet 1 CIDR block"
    type = string
}

variable "public_subnet2_cidr" {
    description = "Public Subnet 2 CIDR block"
    type = string
}

variable "alb_security_group_name" {
    description = "ALB's Security Group"
    type = string
    default = "webserver-alb-sg-river"
}

variable "alb_name" {
    description = "ALB name"
    type = string
    default = "webserver-alb-river"
}