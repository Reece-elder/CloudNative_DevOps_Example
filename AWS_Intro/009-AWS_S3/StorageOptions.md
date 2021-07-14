# Storage Options
When storing data the main decision behind the type of storage is
*how often will you access the data* 

Types of storage are: 
S3 Standard
Intelligent-tiering
S3 Standard IA
S3 One Zone IA
Glacier

## S3 Standard
Default storage class, used for 'often accessed' data
Duplicated across regions for redundancy
No charge for retrieval, charges for storage (in gb)
Near instantaneous data retrieval times
Used for dynamically changing data (such as website hosting)

## Intelligent Tiering
Measures data retrieval metadata, optimises between frequent and infrequent retrieval
More expensive than infrequent retrieval but cheaper than frequent
No charge for retrieval, charges for storage (in gb) and charges monitoring/automation costs 
Near instantaneous data retrieval times
Used for apps or websites where you're unsure how popular

## Infrequent Access
Used for data that is accessed less frequently
Cheaper than standard for storage and has same level of redundancy
Near instantaneous data retrieval times
Charges $0.01 per gb of data when it is retrieved
Used for backup, long term storage of data that may be retrieved

## Infrequent Access One Zone
Same as Infrequent access but 20% cheaper for storage
Data is stored in only one zone so less security in file longevity
Useful for secondary back up data, less vital than primary

## Glacier
Used for data accessed very infrequently
Different plans in place, some plans take up to 12 hours to retrieve data with expensive retrieval cost
Very very cheap per gb with regular ($0.004 per gb, $4 4tb) and as low as $0.99 per tb for data rretrieved twice a year (but expensive retrieval)

# Data Transfer 

Data can be transferred to S3 in sizes from Mb (1,000,000 bytes) to petabytes (1,000,000,000,000,000 bytes)
A JPEG image ranges from 10,000 bytes to 30,000 bytes 

AWS upload speed to s3 is approx 3,000,000 bytes per second meaning an image of 30,000 bytes should take 0.001 seconds but a 1pb file would take 95 years
Netflix uses S3 and has 3.14 petabytes of data.. 

Different transfer methods dependant on the usecase: 
Online
Direct Connection
Offline

## Online 
Using AWS console upload speed and accelerated services for priority
Used for smaller projects, cheapest cost and lowest transfer speed

## Direct Connection
Using dedicated pathways not imposed by internet providers and web traffice
More specialist and expensive, allows quicker transfer speed but with higher start up cost
Can be physical dedicated pathways or network traffic
Used with companies that require high speed constant traffic 

## Offline
Physical devices (Snowball up to snowmobile) allow data to be stored in a physical device at source
Using EInk and high security practices object is sent directly to an AWS datacentre for data retrieval
Used for infrequent large transfers of data (petabytes upwards). Expensive and high security, very very quick but not frequent. 
Snowball - https://www.youtube.com/watch?v=yl25W7LZAMU
Snowmobile - https://www.youtube.com/watch?v=8vQmTZTq7nw&t=3s


