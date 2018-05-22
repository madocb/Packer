# AWS Packer Examples

## What is Packer ?
Packer is an agnostic Image builder developed by Hasicorp

## What does this repo provide ?
This is a work in progress collection of Packer examples to allow you to build Images within Public clouds.
Current examples include:
 - Windows-1

## How do I use Packer with these repos ?
- Install Packer on your Windows or Linux host: https://www.packer.io/docs/install/index.html
- Clone this Repo then run: packer build repo-name.json (e.g. packer windows-1.json)
- These Reops were tested with Packer v1.2.3

## Do I need to do anything else ?
- Yes you need to create an IAM role for your new Packer instance (e.g. packer-s3-ro)
- You also need to ensure your host running Packer has IAM rights to allow an iam:Passrole as per below: 

```json
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "PackerIAMPassRole",
            "Effect": "Allow",
            "Action": "iam:PassRole",
            "Resource": [
                "*"
            ]
        }
    ]
}
```

- Ensure you tie the resource down to minimum requirements to fit your specific needs. 
