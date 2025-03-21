variable "domain-name" {
  default = "manupanand.online"
}
variable "route53-zoneid" {
  default = "x"
}
variable "tools" {
  default = {
    # workstation={
    #     instance_type=""
    #     ports={}
    #     policy_name=[""]
    #     volume_size=
    #     create_iam_role=true
    # }
    # github-runner={
    #     instance_type=""
    #     ports={}
    #     policy_name=[""]
    #     volume_size=
    #     create_iam_role=true
    # }
    test-server={
        # instance_type="t4g.small"
        # ports={}
        # policy_name=[""]
        # volume_size=  
        # create_resource= true 
        create_iam_role=true 
    }
    # vault={
    #     instance_type=""
    #     ports={}
    #     policy_name=[""]
    #     volume_size=
    # }
    
    # jenkins={
    #     instance_type=""
    #     ports={}
    #     policy_name=[""]
    #     volume_size=
    # }
    # argocd={
    #     instance_type=""
    #     ports={}
    #     policy_name=[""]
    #     volume_size=
    # }
    # prometheus={
    #     instance_type=""
    #     ports={}
    #     policy_name=[""]
    #     volume_size=
    # }
    # grafana={
    #     instance_type=""
    #     ports={}
    #     policy_name=[""]
    #     volume_size=
    # }
    # sonarqube={
    #     instance_type=""
    #     ports={}
    #     policy_name=[""]
    #     volume_size=
    # }
    # elk={
    #     instance_type=""
    #     ports={}
    #     policy_name=[""]
    #     volume_size=
    # }


  }
}