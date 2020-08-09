terraform {
  backend "s3" {
    bucket = "bucket-terraform-demo"
    key    = "dev"
    region = "us-east-1"
    encrypt = true
    # Enviar ARN del recurso que creó al archivo de estado
    kms_key_id = "arn:aws:kms:us-east-1:123739201177:key/42d27290-d32b-4d62-b7c5-73f8ba347e02"
  }
}