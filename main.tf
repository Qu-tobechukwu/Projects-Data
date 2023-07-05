terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.51.0"
    }
  }
}

provider "google" {
  credentials = var.gcp-creds

  project = "My-First-Project"
  region  = "us-west"
  zone    = "us-west4-b"
}

variable "gcp-creds"{
default = "AIzaSyA0dlPEPdNbr0cF9rhiENIxwUfSfw71BhA"
}

resource "google_compute_network" "vpc_network" {
  name = "terraform-network"
}
