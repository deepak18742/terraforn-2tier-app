variable "ami" {
    type = string
    description = "this will store ami for my instance"
  
}

variable "instance_count" {
    type = number
    description = "this is the no of instance you need"
}
variable "instance_type" {
    type = string
    description = "this is the store the type  of instance you need"
}
variable "my_env" {
    type = string
    description = "this is the enviroment fot infra you need"
}