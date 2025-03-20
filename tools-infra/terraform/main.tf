module "infra" {
    for_each  =  var.tools
    source    =  "./infra"
}