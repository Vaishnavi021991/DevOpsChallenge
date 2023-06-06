# DevOps Challenge 

Static website launched from s3 bucket

# Verification

Please use Internet Explorer to launch the endpoint http://sample-devops-challenge.s3-website-ap-southeast-2.amazonaws.com/

# Improvements to make this a production grade website
Browser Compatibility - Website should adapt and displays well on different browsers, devices and screen sizes.

SSL/TLS Encryption: Enabling SSL/TLS encryption for secure communication.Enabling encryption in s3 to secure data at rest. 
                    
Back-up & Disaster Recovery: Regular backups and versioning in s3 bucket in case of data loss/ accidental deletions

Automated Deployment: Implementing CI/CD to automate the deployment on the static website.

Monitoring: Using AWS Cloudwatch to track and analyze website performance metrics.

# Alternative Solutions
Custom Domain using AWS Route 53: Instead of using the default S3 bucket endpoint URL, we can configure a custom domain to make the website more professional and easier to remember. This can be achieved by configuring AWS Route 53.
Enable query logging, DNS query logs can be stored in separate s3 bucket for further troubleshooting.

AWS Cloudfront: Content Delivery Network to improve performance and speed of the static website. In order to achieve better latency,it can cache the content globally and deliver from the nearest edge location.




