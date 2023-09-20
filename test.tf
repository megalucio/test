module "kubernetes-engine_workload-identity" {
  source              = "terraform-google-modules/kubernetes-engine/google//modules/workload-identity"
  version             = "27.0.0"
  name                = "my-application-name"
  namespace           = "default"
  project_id          = "my-gcp-project-name"
  use_existing_k8s_sa = true
  annotate_k8s_sa     = false
  k8s_sa_name         = "dagster"
  roles               = ["roles/storage.admin"]
}