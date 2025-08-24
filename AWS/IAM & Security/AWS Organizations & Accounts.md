## **Overview**
**AWS Organizations & Accounts** is a service for managing **multiple AWS accounts** centrally.  
It enables **consolidated billing, policy-based management, and governance** across an entire organization.

## **Details**
- **Core Features**
	- **Multi-Account Management**
		- Create and manage multiple AWS accounts under one organization.  
		- Use **Organizational Units (OUs)** to group accounts by function, department, or environment (e.g., Dev, Prod).  
	- **Consolidated Billing**
		- All accounts share one bill (volume discounts applied across accounts).  
	- **Service Control Policies (SCPs)**
		- Apply guardrails to restrict maximum permissions an account can have.  
		- Work in conjunction with [[AWS Identity and Access Management (IAM)]] policies.  
	- **Account Creation & Management**
		- Create new AWS accounts programmatically.  
		- Invite existing accounts into your organization.  

- **Security & Governance**
	- SCPs cannot grant permissions, only **restrict** them.  
	- Root user of each account still exists but should be locked down with MFA.  
	- Works with [[AWS CloudTrail & CloudWatch]] for logging and compliance.  

- **Integration**
	- Pairs with **AWS Control Tower** for automated landing zone setup.  
	- Supports tagging, consolidated budget tracking, and access management.  

- **Use Cases**
	- Enterprises managing many teams or projects.  
	- Isolating workloads for security, compliance, or billing.  
	- Centralized policy enforcement across accounts.  

- **Billing**
	- No additional cost for using AWS Organizations.  
	- Savings from consolidated billing and shared discounts.  

## **Exam Tips**
- **AWS Organizations = multi-account management**.  
- **SCPs = guardrails** (restrict max permissions, don’t grant).  
- **OU = group of accounts**.  
- **Consolidated billing** = discounts across accounts.  
- Exam scenario: choose **multiple accounts** over one large account for **better isolation and governance**.  

## **References**
- [AWS Organizations](https://aws.amazon.com/organizations/)  
- [AWS Organizations Documentation](https://docs.aws.amazon.com/organizations/)  
