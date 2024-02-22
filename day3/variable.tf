variable "ami" {
    default = "ami-0014ce3e52359afbd"
}

variable "instance_type" {
    default = "t3.micro"
}

variable "ssh_key" {
    default = "shubha"
}

variable "project" {
    default = "cloudblitz"
}

variable "sg_id" {
    default = ""sg-014652e8102e84808
}

variable "min_size" {
    default = 2
}

variable "max_size" {
    default = 4
}

variable "desired_capacity" {
    default = 2
}

variable "subnets" {
    default = ["subnet-07468bb006cd32e5a", "subnet-0f1a1a2dacc0efb2c"]
}

variable "env" {
    default = "dev"
}

variable "vpc_id" {
    default = "vpc-0207ac0d2846e90d8"
}
variable "azs" {
    default = ["us-east-1c", "us-east-1a"]
}