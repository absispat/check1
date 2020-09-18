provider "google" {
  project = "cloudcover-sandbox"
  region  = "us-central1"
  zone    = "us-central1-c"
}

resource "google_compute_instance" "vm_instance" {
  name         = "terraform-instanceovo-service1-${var.env}"
  machine_type = "f1-micro"

  boot_disk {
    initialize_params {
      image = "service1-ovo-test"
    }
  }

  network_interface {
    # A default network is created for all GCP projects
    network = "default"
    access_config {
    }
  }
}

terraform {
  backend "gcs" {
    bucket = "ovoterraformtest"
    prefix  = "service2/dev"
  }
}