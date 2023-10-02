terraform {
  # terraform core version
  required_version = ">= 0.13.0"
  # Define provider
  required_providers {
    aws = {
      # source as hashicorp aws registry
      source = "hashicorp/aws"
      # subset of available provider versions the module is compatible with
      version = "~> 3.0"
    }
  }
}