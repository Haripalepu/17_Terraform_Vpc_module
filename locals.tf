
locals {
  name = "${var.project_name}-${var.environment}"
  az_name = slice(data.aws_availability_zones.az.names,0,2) #Slice function will pick the zones
  }