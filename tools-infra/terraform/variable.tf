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
    #     create_dns= true 
    #     create_iam_role=true
    # }
    # github-runner={
    #     instance_type=""
    #     ports={}
    #     policy_name=[""]
    #     volume_size=
    #     create_dns= true 
    #     create_iam_role=true
    # }
    test-server={
        instance_type="t4g.small"
        ports={test=443}
        policy_name=["AmazonEC2FullAccess","AmazonSSMFullAccess"]
        volume_size= 10  
        create_dns= true 
        create_iam_role=true 
    }
    # vault={
    #     instance_type=""
    #     ports={ vault= 8200}
    #     policy_name=[""]
    #     create_dns= true 
    #     volume_size=
    # }
    
    # jenkins={
    #     instance_type=""
    #     ports={}
    #     policy_name=[""]
    #     create_dns= true 
    #     volume_size=
    # }
    # argocd={
    #     instance_type=""
    #     ports={}
    #     policy_name=[""]
    #     create_dns= true 
    #     volume_size=
    # }
    # prometheus={
    #     instance_type=""
    #     ports={}
    #     policy_name=[""]
    #     create_dns= true 
    #     volume_size=
    # }
    # grafana={
    #     instance_type=""
    #     ports={}
    #     policy_name=[""]
    #     create_dns= true 
    #     volume_size=
    # }
    # sonarqube={
    #     instance_type=""
    #     ports={}
    #     policy_name=[""]
    #     create_dns= true 
    #     volume_size=
    # }
    # elk={
    #     instance_type=""
    #     ports={}
    #     policy_name=[""]
    #     create_dns= true 
    #     volume_size=
    # }


  }
}
variable "aws_user" {
  
}
variable "aws_password" {
  
}
variable "role_name" {
  
}