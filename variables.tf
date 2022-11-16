variable "aws_region" {
    default="us-east-1"
}

variable "base_cidr_block" {
  description = "main cidr block"
  default = "172.17.0.0/16"
}

variable "aws_access_key_id" {
    # default=data.external.env.AWS_ACCESS_KEY_ID
}
variable "aws_secret_access_key" {
    # default=data.external.env.AWS_SECRET_ACCESS_KEY
}
variable "aws_session_token" {
    # default=data.external.env.AWS_SESSION_TOKEN
}


# variable "base_cidr_block2" {
#   description = "main cidr block"
#   default = "172.17.0.0/16"
# }

# # variable "availability_zones" {
# #   description = "A list of availability zones in which to create subnets"
# #   type = list(string)
# # }

# variable "jumpbox-ami" {
#     #Custom AMI with all necessary CLIs already installed
#     description = "Ubuntu 16.04"
#     default = "ami-0b0ea68c435eb488d"
#     # default = "ami-061716e67fd4bc8b3"
  
# }
