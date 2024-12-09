resource "aws_instance" "terraform" {
    ami = "ami-09c813fb71547fc4f"
    instance_type = var.instance_type
    vpc_security_group_ids = ["sg-09d6a0ef53a3322ed"]
    subnet_id = "subnet-0958a471debd0c57a"
    tags = {
        Name = "module-demo"
        description = "dev"
    }
}