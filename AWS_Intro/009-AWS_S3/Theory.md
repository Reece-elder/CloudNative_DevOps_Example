# Theory

S3 (Simple Storage Service) is a highly available Object Store with 'infinite' storage for accessing data anywhere from the web.
Like Dropbox, google drive etc. 

Highly scalable, reliable, secure, fast, inexpensive etc..

Object store, all files stored are 'objects' 
To 'update' an object you must download, edit then reupload

The file is wrapped in meta-data for s3 to understand, then stored in a 'bucket'

## Buckets

Before uploading a bucket is created
Each s3 Bucket MUST have a globally unique name that adheres to rules

## Redundancy

Data in S3 is stored across multiple facilities (not just one AV Zone)
When using S3 you will lose 1 file from 10 million files every 10,000 years - 99.999999999% reliability (11 9's)

## Use Cases

- Storage of Web Content + media (QA Community uses s3 for images and files)
- Static website hosting - HTML, CSS, JS hosted online can be accessed like a website
- Backups and Archiving