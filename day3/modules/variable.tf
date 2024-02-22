variable "ami" {
    default = "ami-0440d3b780d96b29d"
}

variable "instance_type" {
    default = "t2.micro"
}

variable "ssh_key" {
    default = "shubham-nv"
}

variable "project" {
    default = "cloudblitz"
}

variable "sg_id" {
    default = "sg-0e1a0c4dc73ab9bbc"
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
    default = ["subnet-05117aa5bd407d057", "subnet-03a62415a23a7e7bb"]
}

variable "env" {
    default = "dev"
}

variable "vpc_id" {
    default = "vpc-06cf206737ed67da7"
}
variable "azs" {
    default = ["us-east-1c", "us-east-1b"]
}