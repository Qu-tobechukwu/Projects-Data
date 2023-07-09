# Create ASG
# Create IGW
# Create External & Internal 
# Create bucket named: webapp-tf
resource "google_storage_bucket" "auto-expire" {
  name          = "webapp-tf"
  location      = "US"
  force_destroy = true

  public_access_prevention = "enforced"
}



