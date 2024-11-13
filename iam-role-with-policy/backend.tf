## uncomment below to use backend as S3 bucket.
/*
terraform {
  backend "s3" {
    bucket = "terraform-state-bucket"   
    key    = "path/to/my/terraform.tfstate" 
    region = "us-east-1"        
    encrypt = true                          
    dynamodb_table = "terraform-lock"    
  }
}
*/
