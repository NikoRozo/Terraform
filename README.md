# Terraform
Repositorio Practicas con Terraform para Infraestructura como Código

# Instalar Terraform

## Linux
[Descargar](https://www.terraform.io/downloads.html) Terraform para Linux:

```bash
curl -o terraform.zip https://releases.hashicorp.com/terraform/0.12.29/terraform_0.12.29_linux_amd64.zip

unzip terraform.zip;
```

Instalar:

```bash
sudo mv terraform /usr/bin/;

terraform version
```
## Windows
[Descargar](https://www.terraform.io/downloads.html) Terraform para Windows

- Descomprimir Zip y ubicar la carpeta en el directorio que desen.
- Configurar en variables de entorno, en el Path el directorio donde dejamos el exe de terraform
- Validar en el cmd la instalación con el comando
```bash
terraform version
```
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

# Packer-docker
Creación de la IAM con Packer

# [Terraform Demo 1](/Terraform-Demo-1/)
Creación de una instancia

# [Terraform Demo 2](/Terraform-Demo-2/)
Creación de una instancia, utilizando parametros

# [Terraform Demo 3](/Terraform-Demo-3/)
Uso de Outputs y recursos de Security Group

# [Terraform Demo 4](/Terraform-Demo-4/)
Uso de Backend con S3, se implementa encripción como buena practica

# [Terraform Demo 5](/Terraform-Demo-5/)
Implementación con modulos Locales

# [Terraform Demo 6](/Terraform-Demo-6/)
Uso de Localstack con Terraform, definición de ambientes y uso de AWS Profile