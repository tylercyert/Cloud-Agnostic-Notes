## **Overview**
**AWS CloudFormation** is an **Infrastructure as Code (IaC)** service that lets you define and provision AWS resources in a **declarative template**.  
You describe your desired infrastructure in JSON or YAML, and CloudFormation **automatically creates, updates, or deletes** resources in the correct order.

## **Details**
- **Templates**
	- Written in **JSON or YAML**.
	- Define AWS resources (EC2, S3, VPC, IAM, etc.).
	- Can include:
		- **Parameters** (user input at stack creation).
		- **Mappings** (static values, e.g., region → AMI ID).
		- **Conditions** (create resources only if conditions are met).
		- **Outputs** (export values for other stacks or references).

- **Stacks**
	- A **stack** is a collection of resources managed as a single unit.
	- Any changes to the template → stack is updated.
	- Supports **StackSets** to deploy across multiple **regions and accounts**.

- **Automation & Orchestration**
	- CloudFormation handles **dependency ordering** (e.g., creates VPC before EC2).
	- Supports **rollback** if a stack fails.
	- Can **import existing resources** into a stack.

- **Integration**
	- Works with the **AWS Management Console, CLI, and SDKs**.
	- Integrates with [[AWS IAM]] for permissions and [[AWS CloudTrail & CloudWatch]] for monitoring.

- **Use Cases**
	- Consistent, repeatable deployments.
	- Multi-account, multi-region environments.
	- Infrastructure version control with Git (store templates alongside code).

## **Exam Tips**
- **CloudFormation = Infrastructure as Code** (IaC).  
- **Template → Stack → Resources**.  
- **Rollback** occurs automatically on failure.  
- Use **StackSets** for multi-region/account deployments.  
- Compare with **Terraform** (3rd-party IaC, multi-cloud) → CloudFormation is **AWS-native only**

## **References**
- [AWS CloudFormation](https://aws.amazon.com/cloudformation/)
- [CloudFormation User Guide](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/Welcome.html)
