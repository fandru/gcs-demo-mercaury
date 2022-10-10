resource "google_storage_bucket" "bucketformercaury" {

name = "my-terraform-bucket-for-mercaury-nandha" 

storage_class = "REGIONAL"

project = "mytasks-362509"

location = "us-central1"
  

}
#multi buckets creation

resource "google_storage_bucket" "bucket_for_mercaury01" {

    name = "my-terraform-bucket-for-mercaury_suresh"

    storage_class = "REGIONAL"

    project = "mytasks-362509"

    location = "us-central1"

  
}










