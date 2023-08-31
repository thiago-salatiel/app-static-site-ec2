output "network_vpc_id" {
    value = aws_vpc.network_vpc.id
}

output "network_vpc_cidr" {
    value = aws_vpc.network_vpc_cidr_block
}

output "network_subnet_1_id" {
    value = aws_subnet.network_subnet_1_id  
}