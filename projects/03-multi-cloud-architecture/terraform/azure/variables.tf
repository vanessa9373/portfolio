variable "azure_region" {
  default = "westus2"
}

variable "azure_vnet_cidr" {
  default = "10.1.0.0/16"
}

variable "aws_vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "aws_vpn_gateway_ip" {
  description = "Public IP of the AWS VPN Gateway"
  type        = string
}

variable "vpn_shared_key" {
  description = "Pre-shared key for VPN tunnel"
  type        = string
  sensitive   = true
}
