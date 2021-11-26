resource "aws_instance" "RHEL8" {
    ami = "ami-0ba62214afa52bec7"
    instance_type = "t2.micro"
    #availability_zone = toset(["us-east-2a", "us-east-2b"])
    key_name = "ec2-keypair"

    connection {
        type = "ssh"
        host = self.public_ip
        user= "ec2_user"
        private_key = file("C:/Users/Administrator/Desktop/terraform/ec2-keypair.ppk")

    }
    provisioner "file"{
      source = "script.sh"
      destination = "/etc/script.sh"
    }
}



  /*ami           = var.ami
  instance_type = "t2.micro"
  availability_zone = "us-east-2a"
  key_name = var.key_name
  count = 2
}

output "public_ip" {
    value = aws_instance.RHEL8.*.id
}

resource "aws_eip" "lb" {
    count = 2
  instance = aws_instance.RHEL8[count.index].id
} */