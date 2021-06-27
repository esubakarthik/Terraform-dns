/**
 * # DNS Update Module
 * This module will update the DNS records (A record, CNAME, MX) by reading all  .json files from a given location.
 *
 *  Sample usage:
 *
 *  terraform apply -var="file_location=<location of json files>"
 *  terraform apply #uses default location input-json/
 */


# Configure the DNS Provider
provider "dns" {
  update {
    server = "127.0.0.1"
  }
}

#Add A records to the DNS records
resource "dns_a_record_set" "www" {

  for_each = {
  for idx,record in local.json_data  : idx => record
  if record.dns_record_type == "a"
  }

  ttl = each.value.ttl
  zone = each.value.zone
  addresses = each.value.addresses

}

#Add cname to the DNS records
resource "dns_cname_record" "cname" {
  for_each = {
  for idx,record in local.json_data  : idx => record
  if record.dns_record_type == "cname"
  }

  zone = each.value.zone
  cname = each.value.cname
  name = each.value.name

}

#Add mx to the DNS records
resource "dns_mx_record_set" "mx" {

  for_each = {
  for idx,record in local.json_data  : idx => record
  if record.dns_record_type == "mx"
  }
  ttl = each.value.ttl
  zone = each.value.zone

  mx {
    preference = each.value.preference
    exchange   = each.value.exchange
  }

}

locals {
  #search json files in given folder
  #json_files = fileset(path.module, var.file_location+"input-json/*.json")
  json_files = fileset(path.module, join("",[var.file_location,"*.json"]))
  #add all the json to the tuple
  json_data  = [ for f in local.json_files : jsondecode(file("${path.module}/${f}")) ]

}


module "dns_updater" {

  source = "../../."

# ----------------------------------------
# Write your Terraform module inputs here
# ----------------------------------------



}
