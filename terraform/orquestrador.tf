# MODULES ORCHESTRATOR

module "network" {
    source                      = "./modules/network"
    network_vpc_cidr            = "${var.network_vpc_cidr}"
    network_sn_public           = "${var.network_sn_public_cidr}"
}

module "compute" {
    source                   = "./modules/compute"
    sg_public                = "${var.network_vpc.id}"
}