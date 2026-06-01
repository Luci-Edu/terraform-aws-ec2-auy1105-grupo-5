variable "instance_name" {
  description = "Nombre de la instancia EC2"
  type        = string
}

variable "instance_type" {
  description = "Tipo de instancia EC2"
  type        = string
  default     = "t2.micro"
}

variable "ami_id" {
  description = "ID de la AMI a usar"
  type        = string
  default     = "ami-0c101f26f147fa7fd"
}

variable "subnet_id" {
  description = "ID de la subred donde se desplegara la instancia"
  type        = string
}

variable "vpc_id" {
  description = "ID de la VPC"
  type        = string
}

variable "allowed_ports" {
  description = "Lista de puertos TCP permitidos"
  type        = list(number)
  default     = [80, 443, 22]
}

variable "environment" {
  description = "Ambiente: dev, staging o prod"
  type        = string
  default     = "dev"
}

variable "tags" {
  description = "Etiquetas adicionales"
  type        = map(string)
  default     = {}
}
