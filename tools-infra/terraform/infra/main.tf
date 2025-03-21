#create iam role
resource "aws_instace" "instance" {
  name               =  "${var.name}-server"
  instance_type      =  var.instance_type 
  ami                =  var.ami_id
  # instance option
  instance_market_options{
    market_type      = "spot"

  }
  # provide  execution commads -user data
  user_data          = base64encode(templatefile("${path.module}/userdata.sh"))
  tags={
    Name="${var.name}-server"
  }
}


# create security group


# create instance
# resource "aws_instance" "instance" {
  
# }
# create route53