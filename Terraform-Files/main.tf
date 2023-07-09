terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.51.0"
    }
  }
}

provider "google" {
  credentials = file('mbk.json')

  project = "My-First-Project"
  region  = "us-west"
  zone    = "us-west4-b"
}

resource "google_compute_network" "vpc_network" {
  name = "terraform-network"
}

terraform {
  backend "gcs" {
    bucket = "webapp-tf"
    prefix = "three-tier-app"
  }
}

//resource "null-resource" "run-playbook" {
  //provisioner "local-exec" {
    //command = "sudo ansible-playbook /root/Ansible_ws/mainplaybook.yml"
  //}
//}
