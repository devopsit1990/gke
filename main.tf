module "vpc_network" {
  source = "./modules/network/vpc/"

  project_name = var.project_name
  vpc_name = var.vpc_name
  

}

  
