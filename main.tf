resource "aws_iam_group" "kops_group" {
  name = var.group_name
}

resource "aws_iam_group_policy_attachment" "AmazonEC2FullAccess" {
  group      = aws_iam_group.kops_group.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2FullAccess"
}

resource "aws_iam_group_policy_attachment" "IAMFullAccess" {
  group      = aws_iam_group.kops_group.name
  policy_arn = "arn:aws:iam::aws:policy/IAMFullAccess"
}

resource "aws_iam_group_policy_attachment" "AmazonS3FullAccess" {
  group      = aws_iam_group.kops_group.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
}

resource "aws_iam_group_policy_attachment" "AmazonVPCFullAccess" {
  group      = aws_iam_group.kops_group.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonVPCFullAccess"
}

resource "aws_iam_group_policy_attachment" "AmazonRoute53FullAccess" {
  group      = aws_iam_group.kops_group.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonRoute53FullAccess"
}

resource "aws_iam_user" "kops_user" {
  name = var.user_name
}

resource "aws_iam_user_group_membership" "kops" {
  user = aws_iam_user.kops_user.name

  groups = [
    aws_iam_group.kops_group.name
  ]
}

resource "aws_iam_access_key" "kops_user" {
  user = aws_iam_user.kops_user.name
}