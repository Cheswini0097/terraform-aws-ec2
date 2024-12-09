# variable "ami" {
#     type = string
#     #default = "ami-09c813fb71547fc4f"
#     description = "this is the defaul ami for the project it may varies in feature"
#   }
  variable "instance_type" {
    default = "t3.micro"
    type        = string
    validation {
        condition     = contains(["t3.micro", "t3.medium", "t3.small"], var.instance_type)
        error_message = "instance_type can only be one of t3.micro, t3.medium, t3.small"
    } 
}