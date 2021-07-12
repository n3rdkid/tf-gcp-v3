resource "google_app_engine_standard_app_version" "app_engine_front" {
  version_id = "v1"
  service    = "front"
  runtime    = "nodejs14"

  deployment{
    zip{
      source_url = var.artifacts_url
    }
  }

  delete_service_on_destroy = true
}