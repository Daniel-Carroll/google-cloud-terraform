locals {
  env = "prod"
}

provider "google" {
  project = var.project
}

module "vpc" {
  source  = "../../modules/google/vpc"
  project = var.project
  env     = local.env
}

module "http_server" {
  source  = "../../modules/google/http_server"
  project = var.project
  subnet  = module.vpc.subnet
}

module "firewall" {
  source  = "../../modules/google/firewall"
  project = var.project
  subnet  = module.vpc.subnet
}
