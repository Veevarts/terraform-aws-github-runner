# Building Custom Images

Welcome to the guide on building custom images using Packer for AWS.

## Prerequisites

Before you start building your custom images, ensure you have the following prerequisites installed:

- [Packer](https://developer.hashicorp.com/packer/install?product_intent=packer)
- An Amazon Web Services (AWS) account
- AWS credentials provisioned for Packer to consume

## Setting Up AWS Credentials

To set up your AWS credentials for Packer, follow these steps:

1. Create a file named `.env.sh` at the root of this repository.
2. Add your AWS credentials to the `.env.sh` file using the following format:

```bash
# .env.sh
export AWS_ACCESS_KEY_ID=<aws_access_key>
export AWS_SECRET_ACCESS_KEY=<aws_secret_key>
```

## Building Custom Images

Assuming you are building the `ubuntu-focal` image, follow these steps:

Run the following command:
```bash
sh lunch.sh
```
This command initiates the image building process using Packer. Your image will start building inside AWS. Once the process is complete, you will be provided with a complete AMI.

## Additional Information

Make sure to replace `<aws_access_key>` and `<aws_secret_key>` with your actual AWS credentials.
Customize the `lunch.sh` script or Packer configurations as needed for your specific use case.
For any issues or further assistance, refer to the Packer documentation or AWS documentation.