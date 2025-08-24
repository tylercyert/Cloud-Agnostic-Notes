# **How the Internet Works – Foundational Note**

## **Overview**
The Internet is a **network of networks**.  
It works because thousands of independent organizations (**Autonomous Systems**) connect together and exchange traffic using **routing protocols**.  
At its core, the Internet enables **devices to find each other (DNS)**, **address each other (IP)**, and **deliver data (routing/BGP)**.

---

## **Core Components**

### **1. IP Addresses**
- Every device on the Internet has an **IP address** (IPv4 or IPv6).
- IP = the “street address” for devices.
- Two kinds:
	- **Public IPs** → reachable over the Internet.
	- **Private IPs** → used inside local networks (AWS VPCs, home LANs).

---

### **2. DNS (Domain Name System)**
- Humans use names (e.g., `example.com`).
- DNS translates names → IP addresses.
- Hierarchical system: root → TLD (.com) → authoritative name servers.
- In AWS: [[Amazon Route 53]] is the managed DNS service.

---

### **3. Autonomous Systems (AS)**
- An AS = a collection of IP networks under one org’s control (e.g., AWS, Comcast, Google).
- Each AS has an **Autonomous System Number (ASN)**.
- Inside an AS → use **IGP protocols** (OSPF, EIGRP, IS-IS).
- Between ASes → use **BGP (Border Gateway Protocol)**.

---

### **4. BGP (The Glue of the Internet)**
- BGP is the routing protocol of the Internet.
- Each AS **advertises IP prefixes** it owns → tells neighbors “send this traffic to me.”
- Routers exchange BGP updates and build a global routing table.
- The Internet = the sum of all these BGP route advertisements.
- AWS Example:
	- **Global Accelerator** uses anycast + BGP to advertise the same IPs worldwide.
	- **Direct Connect** uses BGP between your ASN and AWS.

---

### **5. Data Flow**
1. User enters `example.com` in browser.
2. DNS resolves it → IP (e.g., `203.0.113.25`).
3. Packet leaves user’s device → ISP router.
4. ISP looks at BGP routes to find the next AS → forwards the packet.
5. Hops across multiple ASes (routers) until it reaches the destination AS.
6. Inside the destination AS, internal routing delivers it to the correct server.

---

## **AWS Context**
- **Inside AWS VPCs** → static routing (route tables).
- **Hybrid Connections** (VPN, Direct Connect) → use **BGP** for dynamic routing.
- **Global Scale Apps**:
	- [[Amazon Route 53]] → DNS-based global traffic control.
	- [[AWS Global Accelerator]] → anycast routing to the nearest healthy Region.
	- [[Amazon CloudFront]] → CDN for caching content close to users.

---

## **Exam Tips**
- Internet = **“network of networks,” held together by BGP.**
- **AS = one organization’s network**; **ASN = its unique ID**.
- **DNS = naming system**, **IP = addressing system**, **BGP = routing system**.
- In AWS:
	- VPC → static routes.
	- Hybrid → BGP.
	- Global routing → Global Accelerator (anycast).
	- Naming → Route 53.

---

## **Analogy**
Think of the Internet like **global shipping**:
- **IP address** = street address.
- **DNS** = phonebook translating names → addresses.
- **AS** = shipping companies (FedEx, DHL, USPS).
- **BGP** = agreements + routes between shippers.
- **Packets** = packages moving through multiple hands until they reach you.

---

## **References**
- [How the Internet Works (Cloudflare)](https://www.cloudflare.com/learning/network-layer/how-does-the-internet-work/)  
- [AWS Global Infrastructure](https://aws.amazon.com/about-aws/global-infrastructure/)  
- [BGP Basics (Cisco)](https://www.cisco.com/c/en/us/support/docs/ip/border-gateway-protocol-bgp/2005-03.html)  