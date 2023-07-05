terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.51.0"
    }
  }
}

provider "google" {
  credentials = file("mbk.json")

  project = "My-First-Project"
  region  = "us-west"
  zone    = "us-west4-b"
}


resource "google_compute_network" "vpc_network" {
  name = "MWA-network"
}

resource "google_compute_network" {
  name = "Maven-host"
  
}

resource "google_compute_network" {
  name = "Sonar-host"
}

resource "google_compute_network" {
  name = "Jenkins-host"
}

resource "google_compute_network" {
  name = "Nexus-host"
}


resource "null-resource" "run-playbook" {
  provisioner "local-exec" {
    command = "sudo ansible-playbook /root/Ansible_ws/mainplaybook.yml"
  }
}
