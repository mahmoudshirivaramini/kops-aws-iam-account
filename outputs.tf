output "user_access_key_id" {
  description = "The access key ID"
  value       = aws_iam_access_key.kops_user.id
}

output "user_secret_access_key" {
  description = "The secret access key. Note that this will be written to the state file. Please protect your backend state file judiciously."
  value       = aws_iam_access_key.kops_user.secret
}