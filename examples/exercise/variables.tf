# ----------------------------------------
# Write your Terraform module inputs here
# ----------------------------------------

variable "file_location" {
  type    = string
  default = "input-json/"
  description = "location of the json files"
}