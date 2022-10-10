resource "google_storage_bucket" "bucket_07" {

name = "my-terraform-bucket-for-mercaury07" 

storage_class = "REGIONAL"

project = "mytasks-362509"

location = "us-central1"
  

}
#multi buckets creation

resource "google_storage_bucket" "bucket_08" {

    name = "my-terraform-bucket-for-mercaury08"

    storage_class = "REGIONAL"

    project = "mytasks-362509"

    location = "us-central1"

  
}










