## **Overview**
**AWS Direct Connect** provides a **dedicated private network connection** between your on-premises data center (or colocation environment) and AWS.  
It bypasses the public internet, offering **lower latency, higher bandwidth, and more consistent performance**.

## **Details**
- **Core Features**
	- Establishes a **private, physical connection** to AWS.  
	- Reduces network costs for **high-throughput workloads**.  
	- Improves **security and reliability** (not exposed to internet routing).  
	- Available at AWS **Direct Connect locations** worldwide.  

- **Connection Options**
	- **Dedicated Connection** – 1 Gbps, 10 Gbps, or 100 Gbps physical connections.  
	- **Hosted Connection** – Provided by AWS Partners, available from 50 Mbps up to 10 Gbps.  

- **Virtual Interfaces (VIFs)**
	- **Private VIF** – Connects to a [[Amazon VPC (Virtual Private Cloud)]].  
	- **Public VIF** – Access to all public AWS services (e.g., [[Amazon S3]], [[Amazon DynamoDB]]).  
	- **Transit VIF** – Connects to multiple VPCs via **AWS Transit Gateway**.  

- **Integration**
	- Often paired with **AWS Site-to-Site VPN** for **redundancy** (backup path over internet).  
	- Works with [[AWS Direct Connect Gateway]] to connect multiple VPCs across different Regions.  

- **Security**
	- Not encrypted by default (private circuit).  
	- Can combine with **VPN** for encryption (Direct Connect + VPN = “hybrid model”).  

- **Use Cases**
	- Hybrid cloud deployments with consistent performance needs.  
	- Large-scale data transfer (e.g., backups, analytics).  
	- Financial services, healthcare, and compliance-sensitive industries.  

- **Billing**
	- Pay for port-hours and data transfer over the connection.  
	- Usually cheaper for **outbound data transfer** compared to internet-based transfer.  

## **Exam Tips**
- **Direct Connect = private, dedicated line** into AWS.  
- **VPN vs Direct Connect**:
	- VPN = quick, over internet, encrypted.  
	- Direct Connect = dedicated, not encrypted by default, stable latency.  
- For **encryption**, use Direct Connect + VPN.  
- Use **DX Gateway** to connect multiple VPCs across regions.  
- Common scenario: Hybrid architecture with **on-prem + AWS VPC**.  

## **References**
- [AWS Direct Connect](https://aws.amazon.com/directconnect/)  
- [Direct Connect Documentation](https://docs.aws.amazon.com/directconnect/latest/UserGuide/Welcome.html)  
