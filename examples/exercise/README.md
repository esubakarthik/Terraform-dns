## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_dns"></a> [dns](#provider\_dns) | 3.2.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_dns_updater"></a> [dns\_updater](#module\_dns\_updater) | ../../. | n/a |

## Resources

| Name | Type |
|------|------|
| [dns_a_record_set.www](https://registry.terraform.io/providers/hashicorp/dns/latest/docs/resources/a_record_set) | resource |
| [dns_cname_record.cname](https://registry.terraform.io/providers/hashicorp/dns/latest/docs/resources/cname_record) | resource |
| [dns_mx_record_set.mx](https://registry.terraform.io/providers/hashicorp/dns/latest/docs/resources/mx_record_set) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_file_location"></a> [file\_location](#input\_file\_location) | location of the json files | `string` | `"input-json/"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_A_records"></a> [A\_records](#output\_A\_records) | n/a |
| <a name="output_CNAME_records"></a> [CNAME\_records](#output\_CNAME\_records) | n/a |
| <a name="output_MX_records"></a> [MX\_records](#output\_MX\_records) | n/a |
