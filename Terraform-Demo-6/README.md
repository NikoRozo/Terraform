# Terraform
La estructura de este proyecto esta diseñada, para desplegar nuestra infraestructura en diferentes cuentas, incluyendo depliegue con Localstack

## Para ejecutar cualquier proyecto ejecute:
```bash
# Descarga los plugin del proveedor
terraform init

# Validar sintaxis
terraform validate

# Plan
terraform plan

# Ejecutar
terraform apply

# Ejecutar - omitir aprobación
terraform apply -auto-approve

# Destruir Infraestructura
terraform destroy
```

## Estructura del Proyecto
- modules
  - s3
    - s3.tf - Definición Infraestructura S3
    - variable.tf
- env
  - dev
    - dev.tf - Ejecución con Localstack
    - variables.tf
  - qa
    - dev.tf - Ejecución con AWS - Profile Default
    - variables.tf
  - prod
    - prod.tf - Ejecución con AWS - Profile PROD
    - variables.tf

# Links de Interes
- [Documentación Terraform para AWS](https://registry.terraform.io/providers/hashicorp/aws/latest/docs)
- [Best Practices - Terraform](https://github.com/hashicorp/best-practices)
- [Localstack con Terraform](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/guides/custom-service-endpoints#localstack)