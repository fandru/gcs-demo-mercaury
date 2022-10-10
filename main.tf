resource "google_storage_bucket" "bucketformercaury_001" {

name = "my-terraform-bucket-for-mercaury-devops" 

storage_class = "REGIONAL"

project = "mytasks-362509"

location = "us-central1"
  

}
#multi buckets creation

resource "google_storage_bucket" "bucket_for_mercaury_002" {

    name = "my-terraform-bucket-for-mercaury_development"

    storage_class = "REGIONAL"

    project = "mytasks-362509"

    location = "us-central1"

  
}










