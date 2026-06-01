# terraform-aws-ec2-auy1105-grupo-5

Modulo Terraform reutilizable para la creacion de instancias EC2 con Security Group en AWS.

## Uso

```hcl
module "ec2" {
  source        = "github.com/Luci-Edu/terraform-aws-ec2-auy1105-grupo-5"
  instance_name = "mi-servidor"
  instance_type = "t2.micro"
  subnet_id     = "subnet-xxxxxxxx"
  vpc_id        = "vpc-xxxxxxxx"
}
```

## Inputs

| Variable | Tipo | Default | Descripcion |
|---|---|---|---|
| instance_name | string | - | Nombre de la instancia |
| instance_type | string | t2.micro | Tipo de instancia |
| ami_id | string | ami-0c101f26f147fa7fd | ID de la AMI |
| subnet_id | string | - | ID de la subred |
| vpc_id | string | - | ID de la VPC |
| allowed_ports | list(number) | [80,443,22] | Puertos permitidos |
| environment | string | dev | Ambiente |
| tags | map(string) | {} | Etiquetas adicionales |

## Outputs

| Output | Descripcion |
|---|---|
| instance_id | ID de la instancia EC2 |
| instance_ip | IP publica de la instancia |
| security_group_id | ID del Security Group |

## Dependencias
- Terraform >= 1.3.0
- AWS Provider >= 5.0
