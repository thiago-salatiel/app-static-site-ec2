# NETWORK VARS CUSTOM VALUES

variable "network_vpc_cidr" {
    type    = string
    default = "10.0.0.0/16"
}

variable "network_sn_public" {
    type    = string
    default = "10.0.1.0/24"
}

# COMPUTE VARS CUSTOM VALUES

variable "ami" {
    type    = string
    default = "ami-02e136e904f3da870"
}

variable "instance_type" {
    type    = string
    default = "t2.micro"
}