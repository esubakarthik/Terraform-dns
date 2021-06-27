# ----------------------------------------
# Write your Terraform module outputs here
# ----------------------------------------


output "A_records" {

  value = resource.dns_a_record_set.www
}

output "CNAME_records" {

  value = resource.dns_cname_record.cname
}

output "MX_records" {

  value = resource.dns_mx_record_set.mx
}