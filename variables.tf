# XC tenant details

variable "xc_api_cert" {
  description = "XC API certificate file path"
  type        = string
}

variable "xc_api_key" {
  description = "XC API key file path"
  type        = string
}

variable "xc_api_url" {
  description = "XC API url"
  type        = string
}

# XC AWS VPC Site details

variable "xc_cloud_credentials" {
  description = "XC AWS VPC Cloud Credential name"
  type        = string
}
variable "name" {
  description = "Desired name of the new XC AWS VPC Site"
  type        = string
}

# AWS VPC details
variable "aws_region" {
  description = "AWS Region"
  type        = string
  default     = "us-east-2"
}

variable "aws_az" {
  description = "AWS Availability Zone"
  type        = string
  default     = "us-east-2a"
}

variable "aws_vpc_cidr" {
  description = "AWS VPC CIDR"
  type        = string
  default     = "192.168.0.0/20"
}

variable "outside_subnet_cidr" {
  description = "External Subnet CIDR"
  type        = string
  default     = "192.168.0.0/25"
}
