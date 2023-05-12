provider "aws"{
 region = var.region
}

resource "aws_instance" "terraform" {
  #count = var.env == "prod" ? 2 : 3
  count = length(var.public_subnet_cidr)
  ami                         =  "ami-0889a44b331db0194" #length(var.imagename)
  instance_type               = var.instance_type
  key_name                    = "hcl"
  subnet_id                   = element(aws_subnet.public_subnet.*.id, count.index)
  vpc_security_group_ids      = ["${aws_security_group.allow_all.id}"]
  associate_public_ip_address = true
  tags = {
    Name = "terraform_server"
    #Name = "${var.vpc_name}-terraform_server-${count.index + 1}"
  }
}
