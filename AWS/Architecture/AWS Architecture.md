# AWS Architecture

## **Overview**
The **AWS Architecture** domain covers the **foundational building blocks** for designing workloads in the AWS Cloud. It focuses on how AWS organizes its **infrastructure, responsibility model, and design principles** to achieve scalability, resilience, and security.  

This hub note links to key concepts you’ll need to understand for AWS exams and practical architecture design.

## **Details**
- **Global Infrastructure**
	- [[AWS Global Infrastructure]]
	- [[AWS Well-Architected Framework]]

- **Resiliency & Scaling**
	- [[AWS Elastic Load Balancing (ELB) & Auto Scaling]]

- **Governance & Responsibility**
	- [[AWS Shared Responsibility Model]]

- **Automation & Management**
	- [[AWS CloudFormation]] (Infrastructure as Code, automated provisioning)

## **Exam Tips**
- **Global Infrastructure**: Region = location, AZ = fault isolation, Edge = low latency.  
- **Shared Responsibility**: AWS secures **of** the cloud, customer secures **in** the cloud.  
- **Well-Architected Framework**: 5 pillars = Operational Excellence, Security, Reliability, Performance Efficiency, Cost Optimization.  
- **ELB + Auto Scaling**: Work together for high availability and scaling.  
- **CloudFormation**: Automates repeatable infrastructure deployment.  

## **References**
- [AWS Architecture Center](https://aws.amazon.com/architecture/)
- [AWS Well-Architected Framework](https://aws.amazon.com/architecture/well-architected/)
- [AWS Global Infrastructure](https://aws.amazon.com/about-aws/global-infrastructure/)
