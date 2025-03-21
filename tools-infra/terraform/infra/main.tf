#create aws instance
resource "aws_instance" "instance" {
 
  instance_type      =  var.instance_type 
  ami                =  var.ami_id
  # instance option
  instance_market_options{
    market_type      = "spot"

  }
  # provide  execution commads -user data
  user_data          = base64encode(templatefile("${path.module}/userdata.sh",{
    AWS_USER         = var.aws_user
    aws_password     = var.aws_password
  }))
  tags={
    Name="${var.name}-server"
  }
}


# create security group


# create instance
# resource "aws_instance" "instance" {
  
# }
# create route53