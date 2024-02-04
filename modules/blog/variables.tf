variable "instance_type" {
  description = "Type of EC2 instance to provision"
  default     = "t3.nano"
}
 variable "ami-filter" {
   description = "Name filter and owner for AMI"

   type = object({
    name  = string
    owner = string
   })

default  = {
  name   = "bitnami-tomcat-*-x86_64-hvm-ebs-nami"
  owner  = "979382823631"
}


variable "asg_min_size" {
  default = 1
}

variable "asg_max_size" {
  default = 2
}

 