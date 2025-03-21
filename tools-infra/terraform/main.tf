module "infra" {
    for_each            =  var.tools
    source              =  "./infra"
    name                =   each.key
    instance_type       =   each.value["instance_type"] 
    create_iam_role     =   each.value["create_iam_role"]
    create_dns          =   each.value["create_dns"]
    volume_size         =   each.value["volume_size"]
    policy_name         =   each.value["policy_name"]
    ports               =   each.value["ports"]
}
 