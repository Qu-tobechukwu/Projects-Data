resource "google_compute_instance" "default" {
  name         = "test"
  machine_type = "e2-micro"
  zone         = "us-west4-b"

  boot_disk {
    initialize_params {
      size = 20GB
      image = "Red Hat Enterprise Linux/Red Hat Enterprise Linux 7"
      labels = {
        my_label = "Jenkins-node1"
      }
    }
  }
resource "google_compute_instance" "default" {
  name         = "test"
  machine_type = "e2-micro"
  zone         = "us-west4-b"

  boot_disk {
    initialize_params {
      size = 20GB
      image = "Red Hat Enterprise Linux/Red Hat Enterprise Linux 7"
      labels = {
        my_label = "Jenkins-node2"
      }
    }
  }
resource "google_compute_instance" "default" {
  name         = "test"
  machine_type = "e2-micro"
  zone         = "us-west4-b"

  boot_disk {
    initialize_params {
      size = 20GB
      image = "Red Hat Enterprise Linux/Red Hat Enterprise Linux 7"
      labels = {
        my_label = "Docker-node1"
      }
    }
  }
resource "google_compute_instance" "default" {
  name         = "test"
  machine_type = "e2-micro"
  zone         = "us-west4-b"

  boot_disk {
    initialize_params {
      size = 20GB
      image = "Red Hat Enterprise Linux/Red Hat Enterprise Linux 7"
      labels = {
        my_label = "Docker-node2"
      }
    }
  }
resource "google_compute_instance" "default" {
  name         = "test"
  machine_type = "e2-micro"
  zone         = "us-west4-b"

  boot_disk {
    initialize_params {
      size = 20GB
      image = "Red Hat Enterprise Linux/Red Hat Enterprise Linux 7"
      labels = {
        my_label = "K8s-node1"
      }
    }
  }

resource "google_compute_instance" "default" {
  name         = "test"
  machine_type = "e2-micro"
  zone         = "us-west4-b"

  boot_disk {
    initialize_params {
      size = 20GB
      image = "Red Hat Enterprise Linux/Red Hat Enterprise Linux 7"
      labels = {
        my_label = "K8s-node2"
      }
    }
  }
