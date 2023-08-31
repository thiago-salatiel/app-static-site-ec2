# VPC
resource "aws_vpc" "network_vpc_cidr" {
    cidr_block           = "var.network_vpc_cidr"
    enable_dns_hostnames = "true"
}

# INTERNET GATEWAY
resource "aws_internet_gateway" "network_igw" {
    vpc_id = aws_vpc.network_vpc.id
}

# SUBNET
resource "aws_subnet" "network_sn_public" {
    vpc_id                  = aws_vpc.network_vpc.id
    cidr_block              = "var.network_sn_public_cidr"
    map_public_ip_on_launch = "true"
    availability_zone       = "us-east-1a"

}

# ROUTE TABLE
resource "aws_route_table" "network_rt_public" {
    vpc_id = aws_vpc.network_vpc.id

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.network_igw.id
    }
}

# SUBNET ASSOCIATION
resource "aws_route_table_association" "rt_public_To_sn_public" {
  subnet_id      = aws_subnet.sn_public.id
  route_table_id = aws_route_table.rt_public.id
}