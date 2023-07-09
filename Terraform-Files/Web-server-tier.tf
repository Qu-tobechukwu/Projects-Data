# Create Public subnet (webserver level)
resource "google_compute_subnetwork" "Web-Server-Layer-1" {
  name          = "Web-Server-Layer-1"
  #ip_cidr_range = "10.2.0.0/16"
  region        = var.region
  network       = google_compute_network.vpc_network.id
  secondary_ip_range {
    range_name    = "tf-test-secondary-range-update1"
    ip_cidr_range = "192.168.10.0/24"
  }
}
# Create Nat-Gateway in Public subnet (webserver)
# Create public route-table and connect it to web-server
# Create e2-micro, ubuntu instances on each server
# Create Firewall rules to open respective ports (HTTPS, HTTP)




