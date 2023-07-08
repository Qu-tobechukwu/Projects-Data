resource "google_compute_instance" "default" {
  name         = "test"
  machine_type = "e2-micro"
  zone         = "us-west4-b"

  boot_disk {
    initialize_params {
      size = 20GB
      image = "Red Hat Enterprise Linux/Red Hat Enterprise Linux 7"
      labels = {
        my_label = "Jenkins-Host"
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
        my_label = "Docker-Host"
      }
    }
  }
