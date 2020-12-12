provider "aws" {
    region = "ca-central-1"
}


#module "vpc" {
#   source = "./vpc"
#}


#module "eip" {
#   source = "./eip"
#}

module "web" {
   source = "./web"
}

#module "sg" {
#   source = "./sg"
#}

#module "db" {
#    source = "./db"
#}

#output "SUBNET_PUBLIC_1a" {
#    value = module.vpc.SUBNET_PUBLIC_1a
#}

#output "ELASTICIP_ID" {
#    value = module.eip.EIP_ID
#}


output "INSTANCE_WEB_1a_ID" {
   value = module.web.EC2_WEB_1a_ID
}

output "INSTANCE_WEB_1b_ID" {
   value = module.web.EC2_WEB_1b_ID
}
