
data "aws_availability_zones" "az" { #No need to mention the region name as already mentioned in provider.tf
  #state = "available" #To fetch the available zones 
}

data "aws_vpc" "default" {
  default = true 
}

data "aws_route_table" "default" { 
  vpc_id = data.aws_vpc.default.id
  filter {
    name = "association.main"
    values = ["true"]
  }
}