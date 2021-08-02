#
# This file has been generated by Cycloid, please DO NOT modify.
# Any manual modifications done to this file, WILL be lost on the
# next project edition via the forms.
#
# Please note that comments in sample files will have been dropped
# due to some limitations upon files' generation.
#
# Any extra variables not found in the original file have been ignored.
#

module "infra" {
  source = "./module-infra"

  bastion_allowed_networks = [
    "0.0.0.0/0"
  ]
  bastion_count         = 1
  bastion_instance_type = "t3.micro"
  cidr                  = "10.0.0.0/16"
  customer              = var.customer
  env                   = var.env
  extra_tags = {
    demo = true
  }
  keypair_name = "demo"
  private_subnets = [
    "10.0.1.0/24"
  ]
  project = var.project
  public_subnets = [
    "10.0.0.0/24"
  ]
}

