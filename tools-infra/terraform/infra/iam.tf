#create iam role

resource "aws_iam_role" "iam-role" {
  count              =  var.create_iam_role ? 1 : 0 # create only if required
  name               =  "${var.name}-iam-role"
  assume_role_policy =  jsonencode({
    "Version": "2012-10-17",
	"Statement": [
		{
			"Sid": "VisualEditor0",
			"Effect": "Allow",
			"Action": [
				"ssm:SendCommand",
				"ec2:DescribeInstances",
				"ssm:ListCommands",
				"ec2:DeleteTags",
				"ecr:ListImages",
				"logs:CreateLogStream",
				"ec2:StartInstances",
				"ssm:RemoveTagsFromResource",
				"ssm:AddTagsToResource",
				"ecr:DescribeRepositories",
				"ecr:BatchCheckLayerAvailability",
				"ec2:DescribeInstanceStatus",
				"ec2:TerminateInstances",
				"ssm:GetConnectionStatus",
				"ec2:CreateTags",
				"ecr:GetDownloadUrlForLayer",
				"ec2:RunInstances",
				"ecr:GetAuthorizationToken",
				"ec2:StopInstances",
				"logs:CreateLogGroup",
				"logs:PutLogEvents",
				"ssm:DescribeInstanceInformation",
				"ecr:BatchGetImage",
				"ssm:ListCommandInvocations",
				"ecr:GetRepositoryPolicy"
			],
			"Resource": "*"
		},
		{
			"Sid": "VisualEditor1",
			"Effect": "Allow",
			"Action": [
				"s3:PutObject",
				"s3:GetObject",
				"s3:ListBucket"
			],
			"Resource": "arn:aws:s3:::dev-ops-state-manupa"
		}
	]

  })
  tags = {
    Name= "${var.name}-iam-role"
  }
}

# ec2 need iam instnce profile to attach the role 
resource "aws_iam_instance_profile" "iam-instnace-profile" {
    count   = var.create_iam_role ? 1 : 0
    name    = "${var.name}-iam-instance-policy"
    role    = aws_iam_role.iam-role[0].name 
}
# attach other iam policies if needed
resource "aws_iam_policy_attachment" "iam-policy-attach" {
    count   = var.create_iam_role ? length(var.policy_name) : 0
    name    = "${var.name}-iam-policy-attachment-${var.policy_name[count.index]}"
    roles = [aws_iam_role.iam-role[0].name]
    policy_arn = "arn:aws:iam::aws:policy/${var.policy_name[count.index]}"
}