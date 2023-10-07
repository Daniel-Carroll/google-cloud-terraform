terraform {
  backend "gcs" {
    bucket = "carroll-industries-nonprod-tfstate"
    prefix = "env/nonprod/google"
  }
}
