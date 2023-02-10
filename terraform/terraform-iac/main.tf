
resource "aws_instance" "iac_expert" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t3.micro"

  tags = {
    Name = "LinuxTips-IaC-Expert"
    Deployed_at = timestamp() 
    Terraform = "True"
  }
}