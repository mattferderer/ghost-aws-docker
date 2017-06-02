# ghost-aws-docker
A docker image to run the Ghost blog on AWS with S3.

This contains:

* The Ghost CMS
* Alpine-Node Docker container
* Additional NPM package (ghost-storage-adapter-s3) to allow uploading files to AWS S3
* Additional content/storage directory for uploading to AWS S3
* A small modification to core/server/storage/base.js that modifies how filenames are created.