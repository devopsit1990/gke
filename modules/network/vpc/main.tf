resource "google_compute_network" "vpc_network" {
  project                 = [var.project_name]
  name                    = [var.vpc_name]
  auto_create_subnetworks = false
  mtu                     = 1460
}

resource "google_compute_subnetwork" "Node_network" {
  name          = [var.Nodenetwork]
  ip_cidr_range = "10.2.0.0/16"
  region        = "us-central1"
  network       = google_compute_network.vpc_network.id
  
  secondary_ip_range {
    range_name    = "services-range"
    ip_cidr_range = "192.168.1.0/24"
  }

  secondary_ip_range {
    range_name    = "pod-ranges"
    ip_cidr_range = "192.168.64.0/22"
  }

}



