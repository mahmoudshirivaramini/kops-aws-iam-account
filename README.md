# IAM User for kops on AWS
In order to build clusters within AWS , create a dedicated [IAM user](https://github.com/kubernetes/kops/blob/master/docs/getting_started/aws.md#setup-iam-user) for `kops`. This user requires API credentials in order to use `kops`.
The `kops` user will require the following IAM permissions to function properly:
```
AmazonEC2FullAccess
AmazonRoute53FullAccess
AmazonS3FullAccess
IAMFullAccess
AmazonVPCFullAccess
```

| WARNING: Use this project for development environment. Note that the secret access key will be written to the state file. Please protect your backend state file judiciously. |
| --- |


# Usage

To run this project you need to execute:

```bash
$ terraform init
$ terraform plan
$ terraform apply
```

Run `terraform destroy` when you don't need these resources.

## Providers
| Provider Name | Version | 
|-------------|--------|
|aws|2.50|

## Inputs
| Name | Description | Type | Defualt |
| ---- | ----------- | ---- | ------- |
|group_name| IAM User group name | `string` | kops |
|user_name| IAM User user name | `string` | kops |

## Outputs
| Name | Description |
|------|-------------|
| user_access_key_id | The access key ID |
| user_secret_access_key | The secret access key | 