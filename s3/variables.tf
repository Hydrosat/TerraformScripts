variable "region" {
  description = "AWS Deployment region.."
}

variable "access_key" {
  type    = string

}
variable "secret_key" {
  type    = string
}

variable "Mode" {
  type    = string
  description= "Mention the mode of state locking retention its should be GOVERNANCE or COMPLIANCE"
}

variable "Years" {
  type    = string
  description = "Add the number of Years for the retentions period od state locking of S3 bucket"

}

variable "bucket_name" {
  type    = string
  description = "Enter you bucket name "

}