resource "aws_instance" "example" {
  ami  = "ami-02b8269d5e85954ef"
  instance_type = "t3.micro"
  tags = var.tag_values

}



variable "tag_values" {
  description = "Map of tags to assign to the resources"
  type  = map(string)
  default  = {
  Environment = "Development"
  Team  = "DevOps"
  }
}
