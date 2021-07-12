terraform {
  backend "gcs" { 
    bucket  = "tf-gcp-v3-artifact"
    credentials = "../serviceAccount.json"
  }
}