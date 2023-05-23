# terraform module - xc-aws-vpc-site

Simple terraform module to create a Volterra AWS VPC Site.

See also
<https://docs.cloud.f5.com/docs/how-to/site-management/create-aws-site#deploy-site-using-terraform>

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.4.6 |
| <a name="requirement_volterra"></a> [volterra](#requirement\_volterra) | >= 0.11.21 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_volterra"></a> [volterra](#provider\_volterra) | >= 0.11.21 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_name"></a> [name](#input\_name) | Desired name of the new XC AWS VPC Site | `string` | n/a | yes |
| <a name="input_xc_api_cert"></a> [xc\_api\_cert](#input\_xc\_api\_cert) | XC API certificate file path | `string` | n/a | yes |
| <a name="input_xc_api_key"></a> [xc\_api\_key](#input\_xc\_api\_key) | XC API key file path | `string` | n/a | yes |
| <a name="input_xc_api_url"></a> [xc\_api\_url](#input\_xc\_api\_url) | XC API url | `string` | n/a | yes |
| <a name="input_xc_cloud_credentials"></a> [xc\_cloud\_credentials](#input\_xc\_cloud\_credentials) | XC AWS VPC Cloud Credential name | `string` | n/a | yes |
| <a name="input_aws_az"></a> [aws\_az](#input\_aws\_az) | AWS Availability Zone | `string` | `"us-east-2a"` | no |
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region) | AWS Region | `string` | `"us-east-2"` | no |
| <a name="input_aws_vpc_cidr"></a> [aws\_vpc\_cidr](#input\_aws\_vpc\_cidr) | AWS VPC CIDR | `string` | `"192.168.0.0/20"` | no |
| <a name="input_outside_subnet_cidr"></a> [outside\_subnet\_cidr](#input\_outside\_subnet\_cidr) | External Subnet CIDR | `string` | `"192.168.0.0/25"` | no |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
