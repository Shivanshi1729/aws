# Question #1

A solutions architect is designing a solution where users will be directed to a backup static error page if the primary website is unavailable. The primary websites DNS records are hosted in Amazon Route 53 where their domain is pointing to an Application Load Balancer (ALB). Which configuration should the solutions architect use to meet the company's needs while minimizing changes and infrastructure overhead? 

1. Point a Route 53 alias record to an Amazon CloudFront distribution with the ALB as one of its origins. Then, create custom error pages for the distribution. 
2. Set up a Route 53 active-passive failover configuration. Direct traffic to a static error page hosted within an Amazon S3 bucket when Route 53 health checks determine that the ALB endpoint is unhealthy. 
3. Update the Route 53 record to use a latency-based routing policy. Add the backup static error page hosted within an Amazon S3 bucket to the record so the traffic is sent to the most responsive endpoints. 
4. Set up a Route 53 active-active configuration with the ALB and an Amazon EC2 instance hosting a static error page as endpoints. Route 53 will only send requests to the instance if the health checks fail for the ALB.



# Question #2 
A solutions architect is designing a high performance computing (HPC) workload on Amazon EC2. The EC2 instances need to communicate to each other frequently and require network performance with low latency and high throughput. Which EC2 configuration meets these requirements? 

1. Launch the EC2 instances in a cluster placement group in one Availability Zone. 
2. Launch the EC2 instances in a spread placement group in one Availability Zone. 
3. Launch the EC2 instances in an Auto Scaling group in two Regions and peer the VPCs. 
4. Launch the EC2 instances in an Auto Scaling group spanning multiple Availability Zones.



# Question #3 

A company wants to host a scalable web application on AWS. The application will be accessed by users from different geographic regions of the world. Application users will be able to download and upload unique data up to gigabytes in size. The development team wants a cost-effective solution to minimize upload and download latency and maximize performance. What should a solutions architect do to accomplish this? 

1. Use Amazon S3 with Transfer Acceleration to host the application. 
2. Use Amazon S3 with CacheControl headers to host the application. 
3. Use Amazon EC2 with Auto Scaling and Amazon CloudFront to host the application. 
4. Use Amazon EC2 with Auto Scaling and Amazon ElastiCache to host the application.

# Question #4 

A company is migrating from an on-premises infrastructure to the AWS Cloud. One of the companys applications stores files on a Windows file server farm that uses Distributed File System Replication (DFSR) to keep data in sync. A solutions architect needs to replace the file server farm. Which service should the solutions architect use? 

1. Amazon EFS 
2. Amazon FSx 
3. Amazon S3 
4. AWS Storage Gateway

# Question #5 

A company has a legacy application that processes data in two parts. The second part of the process takes longer than the first, so the company has decided to rewrite the application as two microservices running on Amazon ECS that can scale independently. How should a solutions architect integrate the microservices? 

1. Implement code in microservice 1 to send data to an Amazon S3 bucket. Use S3 event notifications to invoke microservice 2. 
2. Implement code in microservice 1 to publish data to an Amazon SNS topic. Implement code in microservice 2 to subscribe to this topic. 
3. Implement code in microservice 1 to send data to Amazon Kinesis Data Firehose. Implement code in microservice 2 to read from Kinesis Data Firehose. 
4. Implement code in microservice 1 to send data to an Amazon SQS queue. Implement code in microservice 2 to process messages from the queue.

# Question #6 

A company captures clickstream data from multiple websites and analyzes it using batch processing. The data is loaded nightly into Amazon Redshift and is consumed by business analysts. The company wants to move towards near-real-time data processing for timely insights. The solution should process the streaming data with minimal effort and operational overhead. Which combination of AWS services are MOST cost-effective for this solution? (Choose two.)

1. Amazon EC2 
2. AWS Lambda 
3. Amazon Kinesis Data Streams 
4. Amazon Kinesis Data Firehose 
5. Amazon Kinesis Data Analytics

# Question #7 

A solutions architect is deploying a distributed database on multiple Amazon EC2 instances. The database stores all data on multiple instances so it can withstand the loss of an instance. The database requires block storage with latency and throughput to support several million transactions per second per server. Which storage solution should the solutions architect use? 

1. Amazon EBS 
2. Amazon EC2 instance store 
3. Amazon EFS 
4. Amazon S3

# Question #8

A company has application running on Amazon EC2 instances in a VPC. One of the applications needs to call an Amazon S3 API to store and read objects. The company security policies restrict any internet-bound traffic from the applications. Which action will fulfill these requirements and maintain security? 

1. Configure an S3 interface endpoint. 
2. Configure an S3 gateway endpoint. 
3. Create an S3 bucket in a private subnet. 
4. Create an S3 bucket in the same Region as the EC2 instance.

# Question #9

A company has been storing analytics data in an Amazon RDS instance for the past few years. The company asked a solutions architect to find a solution that allows users to access this data using an API. The expectation is that the application will experience periods of inactivity but could receive bursts of traffic within seconds. Which solution should the solutions architect suggest? 

1. Set up an Amazon API Gateway and use Amazon ECS. 
2. Set up an Amazon API Gateway and use AWS Elastic Beanstalk. 
3. Set up an Amazon API Gateway and use AWS Lambda functions. 
4. Set up an Amazon API Gateway and use Amazon EC2 with Auto Scaling.

# Question #10

A company must generate sales reports at the beginning of every month. The reporting process launches 20 Amazon EC2 instances on the first of the month. The process runs for 7 days and cannot be interrupted. The company wants to minimize costs. Which pricing model should the company choose? 

1. Reserved Instances 
2. Spot Block Instances 
3. On-Demand Instances 
4. Scheduled Reserved Instances