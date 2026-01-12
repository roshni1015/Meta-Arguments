resource "aws_instance" "example" {
  ami           = "ami-02b8269d5e85954ef"
  instance_type = "t3.micro"
  subnet_id     = "subnet-02bcd78f8672a298e"
  key_name      = "Linux"
 

  depends_on = [aws_security_group.example]

  tags = {
    Name = "Instance"
  }
}


resource "aws_security_group" "example" {
  name        = "example-security-group"
  description = "Example security group"
  # Security group rules configuration...
}

