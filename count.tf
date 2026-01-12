resource "aws_instance" "example" {
  count         = 3
  ami           = "ami-0ecb62995f68bb549"  # Replace with your desired AMI ID
  instance_type = "t3.micro"

  tags = {
    Name = "Instance-${count.index + 1}"
               
  }
}