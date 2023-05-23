# Example Module Usage

Create a F5 XC AWS VPC Site. See also
<https://docs.cloud.f5.com/docs/how-to/site-management/create-aws-site#deploy-site-using-terraform>

## Prerequisites

* [Terraform](https://developer.hashicorp.com/terraform/downloads)
* Access to a XC tenant
* Admin permissions (need to research least privileged / exact required perms)
* A downloaded API Certificate


## Note on XC API Certificates

This module makes use of XC API certificates, split into seperate certificate and key
files.

For general information and instructions on XC user access management and API
access, see the following:

- <https://docs.cloud.f5.com/docs/ves-concepts/user-acc>
- <https://docs.cloud.f5.com/docs/how-to/user-mgmt/credentials>

To convert the downloaded XC certificate into separate key and cert files, use
the OpenSSL commandline utility:

```bash
 openssl pkcs12 -info -in my-tenant.console.ves.volterra.io.api-creds.p12 -out myuser-test.key -nodes -nocerts
```

```bash
openssl pkcs12 -info -in my-tenant.console.ves.volterra.io.api-creds.p12 -out myuser-test.cert -nokeys
```

## Usage

This example folder contains a simple terraform root module for
creating a XC AWS VPC site. Refer to the [module
documentation](../README.md) for additional details.

* Replace example values in main.tf as applicable
* Proceed as usual with terraform init, terraform plan, etc. :)
