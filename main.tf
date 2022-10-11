
resource "google_storage_bucket" "frontend_storage01" {

name = "mercaury_frontend_data01" 

storage_class = "REGIONAL"

project = "mytasks-362509"

location = "us-central1"
  

}

resource "google_storage_bucket" "backend_storage02" {

    name = "mercaury_backend_data02"

    storage_class = "REGIONAL"

    project = "mytasks-362509"

    location = "us-central1"

  
}
resource "google_storage_bucket" "data_engine_storage03" {

    name = "mercaury_data_engine_storage03"

    storage_class = "REGIONAL"

    project = "mytasks-362509"

    location = "us-central1"

  
}




resource "google_service_account" "mercaury_backend_enginneers001" {
  project = "mytasks-362509"
  account_id   = "backendserviceaccount001"
  display_name = "A service account for backend that only mentioned users can use"
}

resource "google_service_account_iam_binding" "admin-account-iam" {
  service_account_id = google_service_account.mercaury_backend_enginneers001.name

  role               = "roles/iam.serviceAccountUser"

  members = [
    "user:suresh@gmail.com",
    "user:nandha@gmail.com",
  ]
}


resource "google_service_account" "mercaury_frontend_enginneers002" {
  project = "mytasks-362509"
  account_id   = "frontendserviceaccount"
  display_name = "A service account frontend that only mentioned users can use"
}

resource "google_service_account_iam_binding" "security-account-iam" {
  service_account_id = google_service_account.mercaury_frontend_enginneers002.name

  role               = "roles/iam.securityAdmin"

  members = [
    "user:manikandan@gmail.com",
    "user:sivasakthi@gmail.com",
  ]
}


resource "google_service_account" "mercaury_data_engineers003" {
  project = "mytasks-362509"
  account_id = "dataengineersserviceaccount"
  display_name = "A service account for data_engineers that only mentioned users can use"
  
}

resource "google_service_account_iam_binding" "service_account_deleter" {

  service_account_id =google_service_account.mercaury_data_engineers003.name
  role = "roles/iam.serviceAccountDeleter"

  members = [
    "user:keerthana@gmail.com",
    "user:aravindh@gmail.com",  
  ]
  
}
