resource "google_composer_environment" "composer" {
  name = "composer-dev"
  region = "europe-west1"
  config {
      node_count = 3
      node_config {
          zone = "europe-west1-c"
          machine_type = "n1-standard-1"
          service_account = "terraform-amine@ebiz-europe-west1.iam.gserviceaccount.com"
      }
      software_config {
      python_version = "3"
      }
  }
}