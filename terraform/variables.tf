variable "aws_region" {
    default="us-east-1"
}

variable "base_cidr_block" {
  description = "main cidr block"
  default = "172.17.0.0/16"
}

variable "access_key" {
    # default=data.external.env.AWS_ACCESS_KEY_ID
    # default = ""
}

variable "secret_key" {
    # default=data.external.env.AWS_SECRET_ACCESS_KEY
    # default = ""
}
variable "session_token" {
    # default=data.external.env.AWS_SESSION_TOKEN
    # default = ""
    
}

variable "env" {
  
}

variable "cluster_name" {
  
}

variable "cidrs" {
    default = {
        private-cidr-a = "fr"
        private-cidr-b = "fd"
        private-cidr-c = "fds"
        public-cidr-a = "fds"
        public-cidr-b = "sdf"
        public-cidr-c = ""
    }
  
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
