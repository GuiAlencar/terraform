resource "aws_key_pair" "key" {
  key_name   = "aws-key"
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
  subnet_id = data.terraform_remote_state.vpc.outputs.subnet_id
  vpc_security_group_ids = [data.terraform_remote_state.vpc.outputs.security_group_id]
  associate_public_ip_address = true
  user_data = file("./docs/docker.sh")

  tags = {
    Name = "vm-terraform"
  }
}