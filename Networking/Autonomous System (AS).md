# **Autonomous System (AS)**

## **Overview**
An **Autonomous System (AS)** is a **collection of IP networks and routers under the control of a single organization** that presents a **unified routing policy** to the internet.  
Each AS is identified by a unique **Autonomous System Number (ASN)**.

---

## **Details**
- **Core Characteristics**
	- A single organization manages the AS (ISP, enterprise, cloud provider).
	- Routes inside the AS managed by **IGPs** (e.g., OSPF, EIGRP, RIP, IS-IS).
	- Routes between ASes managed by **EGPs** (mainly BGP).
	- Each AS has a unique **ASN** (public or private).

- **AS Types**
	- **Stub AS** → connected to only one other AS (e.g., small enterprise).
	- **Transit AS** → provides connectivity between multiple ASes (e.g., large ISP).
	- **Multihomed AS** → connected to multiple ASes but doesn’t transit traffic.

- **AS Numbers**
	- **Public ASNs**: Assigned by regional internet registries (RIRs).
	- **Private ASNs**: 64512–65534 (16-bit) and 4200000000–4294967294 (32-bit).
	- AWS example: You can use a private ASN on your side of a Direct Connect or VPN.

---

## **AWS Context**
- **VPCs** = operate inside AWS’s global AS (Amazon has its own public ASNs).  
- **Direct Connect / VPN**:
	- Use **BGP with ASNs** to exchange routes between your network (your ASN) and AWS (Amazon ASN).
	- Default AWS public ASN = **64512**, but you can configure others.
- **Transit Gateway**:
	- Uses BGP and ASN configuration for dynamic route propagation.
- **Global Accelerator**:
	- Uses **anycast BGP** to advertise AWS’s ASNs globally.

---

## **Exam Tips**
- **AS = one organization’s routing domain**.  
- **IGP (OSPF, EIGRP)** = used **inside** an AS.  
- **BGP** = used **between** ASes.  
- AWS exams often phrase: *“Which routing protocol connects AWS to an on-prem network?”* → **BGP between ASNs**.  
- Remember ASN ranges:  
	- Private = **64512–65534**, **4200000000–4294967294**.  
	- Public = assigned by RIRs.  

---

## **References**
- [IANA ASN Registry](https://www.iana.org/assignments/as-numbers/as-numbers.xhtml)  
- [AWS Direct Connect Routing](https://docs.aws.amazon.com/directconnect/latest/UserGuide/Welcome.html)  
- [AWS Transit Gateway](https://docs.aws.amazon.com/vpc/latest/tgw/what-is-transit-gateway.html)  