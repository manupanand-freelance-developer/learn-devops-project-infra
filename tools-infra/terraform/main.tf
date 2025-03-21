module "infra" {
    for_each            =  var.tools
    source              =  "./infra"
    name                =   each.key
    create_iam_role     =   each.value["create_iam_role"]
}