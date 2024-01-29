resource "aws_key_pair" "key" {
  key_name   = "aws-key-${var.environment}"
  public_key = file("./aws-key.pub")
  /*
    gerar um par de chaves no terminal
    ssh-keygen -f aws-key
    enter duas vezes
  */
}

#----------------------

resource "aws_instance" "vm" {
  ami                     = "ami-0d1ddd83282187d18" # ami da imagem do ubuntu na aws
  instance_type           = "t2.micro"
  key_name = aws_key_pair.key.key_name
  subnet_id = module.network.subnet_id
  vpc_security_group_ids = [module.network.security_group_id]
  associate_public_ip_address = true

  tags = {
    Name = "vm-${var.environment}"
  }
}