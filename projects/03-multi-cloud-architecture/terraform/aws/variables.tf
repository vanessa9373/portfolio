variable "aws_region" {
  default = "us-west-2"
}

variable "aws_vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "azure_vnet_cidr" {
  description = "Azure VNet CIDR for routing"
  default     = "10.1.0.0/16"
}

variable "azure_vpn_gateway_ip" {
  description = "Public IP of the Azure VPN Gateway"
  type        = string
}
