variable "domain-name" {
  default = "manupanand.online"
}
variable "route53-zoneid" {
  default = "x"
}
output "new" {
  value = var.domain-name
}