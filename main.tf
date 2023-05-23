terraform {
  required_version = ">= 1.4.6"

  required_providers {
    volterra = {
      source  = "volterraedge/volterra"
      version = ">= 0.11.21"
    }
  }
}

provider "volterra" {
  api_cert = var.xc_api_cert
  api_key  = var.xc_api_key
  url      = var.xc_api_url
}

resource "volterra_aws_vpc_site" "site" {
  name       = var.name
  namespace  = "system" # Can these exist in other namespaces? Find out.
  aws_region = var.aws_region
  aws_cred {
    name      = var.xc_cloud_credentials
    namespace = "system"
  }
  instance_type = "t3.xlarge"
  vpc {
    new_vpc {
      name_tag     = var.name
      primary_ipv4 = var.aws_vpc_cidr
    }
  }
  ingress_gw {
    aws_certified_hw = "aws-byol-voltmesh"
    az_nodes {
      aws_az_name = var.aws_az
      disk_size   = 20
      local_subnet {
        subnet_param {
          ipv4 = var.outside_subnet_cidr
        }
      }
    }
  }
  logs_streaming_disabled = true
  no_worker_nodes         = true
}

resource "volterra_tf_params_action" "apply_aws_vpc" {
  site_name        = volterra_aws_vpc_site.site.name
  site_kind        = "aws_vpc_site"
  action           = "apply"
  wait_for_action  = true
  ignore_on_update = true
}
