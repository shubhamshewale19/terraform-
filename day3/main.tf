provider "aws" {
    region = "eu-north-1"
}

module "asg" {
    source = "./modules/autoscaling"
    image_id = var.ami
    instance_type = var.instance_type
    key_pair = var.ssh_key
    project = var.project
    security_group_id = var.sg_id
    min_size = var.min_size
    max_size = var.max_size
    desired_capacity = var.desired_capacity
    subnet_ids = var.subnets
    azs = var.azs
}


module "lb" {
    source = "./modules/loadbalancer"
    project = var.project
    env = var.env
    security_group_id = var.sg_id
    subnet_ids = var.subnets
    vpc_id = var.vpc_id
    autoscaling_group_name_home = module.asg.asg_home_name
    autoscaling_group_name_laptop = module.asg.asg_laptop_name
    autoscaling_group_name_mobile = module.asg.asg_mobile_name
}
