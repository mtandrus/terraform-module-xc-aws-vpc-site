terraform {
  required_version = ">= 1.4.6"
}

module "xc_aws_vpc_site" {
  source = "git::https://github.com/mtandrus/terraform-module-xc-aws-vpc-site.git"

  # XC tenant details
  xc_api_cert = "/Users/myuser/.xc/myuser-test.cert"
  xc_api_key  = "/Users/myuser/.xc/myuser-test.key"
  xc_api_url  = "https://my-tenant.console.ves.volterra.io/api"

  # XC AWS VPC Site details
  name                 = "test-aws-vpc-site"
  xc_cloud_credentials = "name_of_my_xc_cloud_credential"

  # AWS VPC details
  aws_region          = "us-west-2"
  aws_az              = "us-west-2a"
  aws_vpc_cidr        = "192.168.0.0/20"
  outside_subnet_cidr = "192.168.0.0/25"
}
