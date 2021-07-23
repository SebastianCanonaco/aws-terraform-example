variable "access_key" {
    type = string
}

variable "secret_key" {
    type = string
}

provider "aws" {
  region = "sa-east-1"
  # Set secrets via environment variables
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
}

resource "aws_instance" "web" {
  ami                    = "ami-05e809fbeee38dd5e"
  instance_type          = "t2.micro"
  vpc_security_group_ids = ["${aws_security_group.web.id}"]
  user_data = "${file("index.html.sh")}"
}

resource "aws_security_group" "web" {
    ingress {
        from_port   = 80
        to_port     = 80
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
}
