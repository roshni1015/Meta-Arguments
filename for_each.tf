locals {
 ec2 = {
   "vm1" = { instance_type = "t3.micro", ami_id = "ami-07ff62358b87c7116", name = "Amazon-Linux"},
   "vm2" = { instance_type = "t3.micro", ami_id = "ami-0ecb62995f68bb549", name = "Ubuntu" },
   "vm3" = { instance_type = "t3.micro", ami_id = "ami-06777e7ef7441deff", name = "Windows"}
 }
}  
 
resource "aws_instance" "my_ec2" {
 for_each = local.ec2
 instance_type = each.value.instance_type
 ami = each.value.ami_id

 tags = {
  Name= "${each.value.name}"
 }

}
