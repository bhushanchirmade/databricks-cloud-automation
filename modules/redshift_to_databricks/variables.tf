variable "aws_access_key" {
  type = "string"
  description = "AWS Access Key"
}

variable "aws_secret_key" {
  type = "string"
  description = "AWS Secrete Key"
}

variable "expire_query_results_days" {
  type = "string"
  description = "# days before query results stored in S3 unload bucket are expired"
  default = "10"
}

variable "aws_region" {
  type = "string"
  description = "The region where AWS operations will take place"
}

variable "custom_unload_bucket_name" {
  type = "string"
  description = "Assign a name to the temporary S3 bucket which is used to unload query results from Redshift"
}

variable "custom_iam_role_name_for_s3_conection" {
  type = "string"
  description = "Assign a name to the role to allow Redshift to access the unload bucket"
}

variable "databricks_deployment_role" {
  type = "string"
  description = "Role used to deploy Databricks. This may be determine from the Databricks account management console"
}

variable "custom_redshift_iam_role_name" {
  type = "string"
  description = "Optionally assign a custom name to the IAM role which will attach to the Redshift cluster and allow unloading query results to the S3 bucket"
}

variable "redshift_cluster_id" {
  type = "string"
  description = "Identifier of the target Redshift cluster to connect. This may be found in the 'Cluster' column in the AWS UI and is the user-specified name for that cluster."
}

variable "databricks_vpc_id" {
  type = "string"
  description = "ID of VPC which was used to deploy Databricks. Contact sales@databricks.com for help determining your Databricks VPC ID or deploying a Databricks workspace."
}

# variable "databricks_workspace_url" {
#   type = "string"
#   description = "URL to access Databricks workspace"
# }

# variable "databricks_access_token" {
#   type = "string"
#   description = "Databricks API access token"
# }