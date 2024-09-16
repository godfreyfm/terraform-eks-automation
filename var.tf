variable "role_arn" {
  description = "role arn"
  type = string
  
}

variable "region" {
  description = "region used"
  type = string
}

variable "vpc_cidr_block" {
  description = "Cidr block for the vpc"
  type = string
}
variable "private_subnet_cidr_blocks" {
  description = "private cidrs for the sudnets"
  type = list(string)
}
variable "public_subnet_cidr_blocks" {
  description = "public cidrs for the subnet"
  type = list(string)
}