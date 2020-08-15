# AWS-Lambda-Layers
Creating AWS Lambda Layers

# AWS Settings and Credentials
Change file name ".env-dist" to ".env" and edit ".env" file.
There are AWS Credentials and S3 Bucket Name which is target storage for uploading layer package zip file. 

# Python Packages (requirements.txt)
Add your needed python packages names to the "requirements.txt" file.

# Running
Run this shell command.

$ sh run.sh

# Output
Every run the file "run.sh",  created a directory starting with "build_" and ending with the current date. You can get your package zip file from this directory, but at the same time, this file would be uploaded to the S3 bucket (the name is in .env file). While setting the layer to a lambda function, you can use the s3 URL.

# Cleaning
Run this shell command to get rid of old build directories.

$ sh clean.sh