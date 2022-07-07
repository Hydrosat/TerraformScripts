resource "aws_ecr_repository" "hydroECR" {
  name                 = "${var.env}-hydrosat-ecr-repo" 
  image_scanning_configuration {
    scan_on_push = true
  }
}

