# **Multi-Region Architecture in AWS (Example: USA + Europe)**

## **Overview**
A **multi-Region architecture** deploys your application in **two or more AWS Regions** (e.g., N. Virginia `us-east-1` + Frankfurt `eu-central-1`) to achieve:
- **Low latency** → serve users closer to them.
- **High availability** → failover if a Region goes down.
- **Compliance/data residency** → keep data in specific geographies.

---

## **Core Building Blocks**

### **1. Global Entry Points**
- **Amazon Route 53** → DNS-based routing.
	- **Latency-based routing** → direct users to the closest Region.
	- **Failover routing** → if one Region is unhealthy, send traffic to the other.
	- **Geolocation routing** → send EU users to Europe, US users to USA.
- **AWS Global Accelerator** → provides **static anycast IPs**, routes traffic to the nearest healthy Region instantly (faster than DNS changes).
- **Amazon CloudFront** → CDN that caches static content at edge locations worldwide.

---

### **2. Compute Layer**
- Deploy workloads in **multiple Regions**:
	- [[Amazon EC2 (Elastic Compute Cloud)]], [[Amazon ECS]], [[Amazon EKS]], [[AWS Lambda (Serverless)]], etc.
- Use **Auto Scaling Groups + ELB** in each Region for high availability.
- Containers can be backed by [[Amazon ECR]] replicated cross-Region.

---

### **3. Data Layer**
- **Relational (SQL)**:
	- [[Amazon Aurora Global Database]] → multi-Region read replicas with sub-second replication; single Region for writes.
	- [[Amazon Aurora]] → cross-Region read replicas.
- **NoSQL (key-value)**:
	- [[Amazon DynamoDB Global Tables]] → fully multi-master, multi-Region replication.
- **Object Storage**:
	- [[Amazon S3]] with **Cross-Region Replication (CRR)**.
- **Caching**:
	- [[Amazon ElastiCache]] → usually deployed per-Region; not global.

---

### **4. Networking**
- **VPCs per Region** → each Region has isolated VPC(s).
- **Transit Gateway + VPN/Direct Connect** for hybrid or cross-Region private networking.
- **Global Accelerator** can route across Regions using AWS’s backbone.

---

### **5. Observability & Security**
- **CloudWatch** → metrics/logs per Region, can be centralized with cross-Region dashboards.
- **AWS Config / Security Hub** → multi-Region compliance and monitoring.
- **IAM & Organizations** → global identity and account management.

---

## **Use Case: USA + Europe**
- Deploy frontend + backend services in both `us-east-1` and `eu-central-1`.
- Use **Route 53 latency-based routing** or **Global Accelerator** to route users:
	- US users → `us-east-1`.
	- EU users → `eu-central-1`.
- Replicate data:
	- If strong consistency is required → Aurora Global DB (single write, multi-read).
	- If multi-master is acceptable → DynamoDB Global Tables.
- Store shared assets (images, static files) in **S3 with CRR** or serve via **CloudFront**.

---

## **Exam Tips**
- **Multi-Region = latency + disaster recovery.**
- **Route 53** = DNS-level routing (latency, failover, geolocation).
- **Global Accelerator** = network-level routing (static IPs, faster failover).
- **Aurora Global DB** = 1 primary Region (writes) + read-only secondaries.
- **DynamoDB Global Tables** = multi-Region, multi-master NoSQL.
- **S3 Cross-Region Replication** = async copy of objects to another Region.
- For compliance (GDPR, HIPAA), data may need to **stay in-Region** → use Region-specific services.

---

## **References**
- [AWS Multi-Region Architecture Guide](https://aws.amazon.com/architecture/multi-region/)  
- [Route 53 Routing Policies](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/routing-policy.html)  
- [Aurora Global Database](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-global-database.html)  
- [DynamoDB Global Tables](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/GlobalTables.html)  