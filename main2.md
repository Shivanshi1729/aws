# Regions

A region is a geographical area. Each region Consists of 1 or more availability zones

[more info](https://aws.amazon.com/about-aws/global-infrastructure/regions_az)

## Data Centers

- Availability Zone

## Mini Data Centers

- Edge Locations

# EC2 Amazon Elastic Compute Cloud

### Instance Purchasing Options 

- On Demand instances : Pay by he hour.
- Reserved instances : For long term ( discount ).
- Spot instances : Bid on unused instances (Discount / 4 hours ).
- Dedicated hosts : Pay for a physical host that is fully dedicated to running your instances. ( low cost ).

Spread type partition

### Placement Group

Used for disaster recovery

AWS has 3 strategies : 

* Cluster
* Partition
* Spread

## Configuring EC2

1. Select Region 
   - ![image](./images/136891725-48bba80b-f877-4b4e-8912-24ba189ca497.png)
2. Services->EC2 
   - ![image](./images/136891851-5e60d45c-5fb4-4ee3-8e0a-42dc818da9e7.png)
3. Select Instances -> Launch Instances ![image](./images/136892039-5c4c9595-4c78-472b-a607-ff6aaf99d805.png)
4. Select an AMI 
   1. Windows ![image](./images/136892195-0d424d4f-ff06-4299-8416-3663aa358042.png)
   2. Linux ![image](./images/136905041-055395a3-08a7-4d3c-a7e3-0eba90a8c36c.png)
5. Instance type = t2 micro 
6. Configure ![image-20211012100900628](/home/archie/.config/Typora/typora-user-images/image-20211012100900628.png)
7. Add Storage ![image](./images/136893512-6fffec3f-f85a-467a-8053-65891714f514.png)
8. Add tags : 
   - A tag consists of a case-sensitive key-value pair. 
   - For example, you could define a tag with key = Name and value = Webserver. 
   - A copy of a tag can be applied to volumes, instances or both. 
   - ![image](./images/136893714-24bc0447-415c-48bd-b61a-0e7c07e5dacc.png)
9.  Configure Security Group :
   - A security group is a set of firewall rules that control the traffic for your instance. Can attach only upto 5 security with an instance. 
   - ![image](./images/136895017-b7984e75-8d0d-4864-ad5e-0b9b8b92a08a.png) 
   - ![image-20211012121625808](/home/archie/.config/Typora/typora-user-images/image-20211012121625808.png)
11. Launch
12. Create a (RSA) key pair and download it. A .pem file will get downloaded. 
13. Launch Instance
14. Go to the instance and wait for 2/2 status check
    - **For windows instance**
      - Select the instance -> connect -> RDP Client -> Download Remote Desktop file
      - Create password using the pem file downloaded earlier.
      - To create connection in windows, open the file. 
      - In linux download a client ( Remmina ) and create connection using it.
      - Open the instance by giving all the details.
    - **For Linux**
      - ![image](./images/136906173-70c98312-7384-438b-a797-bfaff92196c5.png)
      - ![image](./images/136906407-a67ce3ed-9a84-4f94-a696-a2d7f65dee6c.png)
    - **After the connection is made**
      1. Some user settings
        - ![image](./images/136897075-b36f4faa-ae3b-48d6-869d-9208d5eb61ab.png)
    - **Creating Server** ( Single Hosting )
      1. Go to server manager ( Let it load )
        - ![image](./images/136897559-751667cc-d618-404c-85b5-23fd2c771b66.png)
        - ![image](./images/136897699-c05b7a6a-bfb6-456c-a2b3-ffe718eb24f3.png)
        - ![image](./images/136897799-4013dbec-71d7-4a34-84aa-f7c0a12f5787.png)
        - ![image](./images/136897958-7273b854-6829-420a-8c9e-23df3cc92a72.png)
        - Next -> Next -> Next -> Install
    - **Changing what to serve**
      - The file to be served in localhost is located at  `C:\inetpub\wwwroot` .
      - Change the html file there.
      - This file will be served at the public ip of the instance.
    - **Site settings**
      1. Open IIS manager
      2. Go to `EC2AMAZ-J2UDHD6\Sites\Default Web Site`
      3. Refresh / Restart/ Browse
    - **Dual Hosting**
      - Create a html file anywhere.
      - ![image](./images/136901077-58092e57-4579-44d3-95ca-57c91e71f853.png)
      - ![image](./images/136902032-5b537454-86b9-45b8-b766-9cd4d58bc034.png)
      - To use this in public, we need to add this port in our security tag.
      - ![image](./images/136902697-ef11726a-df5a-4806-a3ec-9f0940fd3fd4.png)
      - ![image](./images/136902841-60985fb3-e6ad-4b36-aa87-7d716327c2e9.png)
      - ![image](./images/136903057-3e97c31c-fe65-4703-aa0d-c3c8bb91b51f.png)
      - Now we need to do setting in window instance
      - run
      - firewall.cpl
      - either create rule or turn it off
    - **Creating rule**
      - Advanced sttings -> Inbound rules -> new rule -> Port ->TCP -> 8080 -> next -> next ->finish

### Linux :


- sudo su -
- yum install httpd* wget -y
- yum install wget 
- cd /var/www/html 
- ls 
- wget youtube.com 
- ls 
- service httpd start 
- chkconfig httpd on 
- history 
- ls 
- vi /etc/httpd/conf/httpd.conf 
  - find index.html -> write archie.html	
- mv index.html archie.html 
- ls 
- service httpd restart 
- history

**Dual hosting**

- cd /var/www/html 
- ls 
- mkdir himanshu 
- cd himanshu/ 
- wget google.com 
- vi /etc/httpd/conf/httpd.conf  
- cd /etc/httpd/conf.d 
- ls 
- vi first.conf 
- cp first.conf second.conf 
- vi second.conf  
- service httpd restart
- ![image](./images/136932559-cd394d64-738e-4b5f-8eb8-1b9da5f66ac6.png)


## Elastic IP Addresses

- A static IPv4 address designed for dynamic cloud computing
- ![image](./images/136952332-312592b1-45f1-4fec-93dd-720c117cf571.png)
- ![image](./images/136955462-cd26f4f6-6cd5-475b-a19d-6bc119d16fee.png)
- ![image](./images/136955924-f8477543-3fb8-4fd3-9c9b-e8c524400ba3.png)
- ![image](./images/136957806-ffb3fee2-54dd-479a-bb75-89a51775efa3.png)
- run -> diskmgmt.msc -> 



**linux**

- fdisk -l
- fdisk /dev/xvdf 
- n
- p
- 1
- +10{G}
- w
- mkdir /harddisk
- mount /dev/xvdf1 /harddisk
- mkfs.ext4 /dev/xvdf1
- mount /dev/xvdf1 /harddisk
- ![image](./images/136961372-7b73d09c-c7cf-40e7-ba8a-609bf8e97eca.png)
- sudo su -
- fdisk -l
- fdisk /dev/xvdf
- m
- n
- p
- default
- default
- +11G
- m
- w
- mkfs.ext4 /dev/xvdf1
- mkdir /harddisk
- mount /dev/xvdf1 /harddisk
- mount
- df -h
- ![image](./images/137849578-93c674fe-12ec-4d29-bd0c-624e84b17016.png)
- ![image](./images/137853495-088bc2cb-6326-4265-b27f-36388a085aad.png)


## TCP vs HTTP

## IAM

- root user -> IAM

# LOAD BALANCER

create 2 linux instances