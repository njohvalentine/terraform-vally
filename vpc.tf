resource "aws_vpc" "My_terraform_vpc" {
  cidr_block       = var.vpcCIDRblock
  instance_tenancy = var.instanceTenancy
  tags = {
    Name = "My_terraform_vpc"
  }
}
# creating a public Subnet
resource "aws_subnet" "terra_pub_subnet1" {
  vpc_id     = aws_vpc.My_terraform_vpc.id
  cidr_block = "10.0.2.0/24"
  tags = {
    Name = "terra_pub_subnet1"
  }
}

# creating a private Subnet
resource "aws_subnet" "terra_private_subnet1" {
  vpc_id     = aws_vpc.My_terraform_vpc.id
  cidr_block = "10.0.1.0/24"
  tags = {
    Name = "terra_private_subnet1"
  }
}

# Creating the Security Group
resource "aws_security_group" "My_terra_Security_Group" {
  vpc_id      = aws_vpc.My_terraform_vpc.id
  name        = "my_terra_sg"
  description = "My VPC Security Group"
  tags = {
    Name        = "my_terra_sg"
    Description = "My VPC Security Group"
  }
}

# Creating the Internet Gateway
resource "aws_internet_gateway" "terra-gw" {
  vpc_id = aws_vpc.My_terraform_vpc.id
}
# Create the Route Table
resource "aws_route_table" "my_pub_rt" {
  vpc_id = aws_vpc.My_terraform_vpc.id
}