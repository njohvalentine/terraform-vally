variable "region" {
  type    = string
  default = "us-east-1"
}
variable "availabilityZone" {
  type    = string
  default = "us-east-1a"
}
variable "vpcCIDRblock" {
  type    = string
  default = "10.0.0.0/16"
}
variable "instanceTenancy" {
  type    = string
  default = "default"
}
variable "subnetCIDRblock" {
  default = "10.0.1.0/24"
}
variable "destinationCIDRblock" {
  default = "0.0.0.0/0"
}
variable "mapPublicIP" {
  default = true
}
variable "accesskey" {
  }
variabel "secretkey" {}
