variable "network_vpc_id" {}

variable "network_vpc_cidr" {}

variable "network_subnet_1_id" {}

variable "compute_image_id" {
    type    = string
    default = "t2.micro" 
}

variable "compute_key_name" {
  type  = string
  default = "default"
}