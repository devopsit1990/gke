module "vpc_network" {
  source = "./modules/network/vpc/"

  name_prefix = "${var.cluster_name}-network-${random_string.suffix.result}"
  project     = var.project
  region      = var.region

  
