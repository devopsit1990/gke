terraform {
  backend "gcs" {
    credentials = "${file("kubernetes-411307-78665b4908eb.json")}"
    bucket  = "tf-state-prod"
    prefix  = "terraform/state"
  }
}
