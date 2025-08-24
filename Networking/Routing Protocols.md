## **Overview**
Routing protocols define **how routers exchange information** to determine the best path for traffic.  
As a cloud solutions architect, you need to know both **internal (IGP)** and **external (EGP)** protocols, plus how AWS uses them for **VPCs, VPNs, and multi-Region connectivity**.

---

## **1. Static Routing**
- **Definition:** Routes manually added by an administrator.
- **Use Cases:**
	- AWS VPC route tables (static by default).
	- Simple networks with no frequent topology changes.
- **Pros:** Simple, predictable.
- **Cons:** No automatic failover or discovery.

---

## **2. IGP (Interior Gateway Protocols) – Inside One Network/AS**
- **Purpose:** Routing **within** a single [[Autonomous System (AS)]].
- **Key Protocols:**
	- **RIP (Routing Information Protocol)** → legacy, hop-count metric, rarely used.
	- **EIGRP (Enhanced IGP)** → Cisco proprietary, mix of distance-vector & link-state.
	- **OSPF (Open Shortest Path First)** → most common enterprise IGP, link-state, uses Dijkstra’s SPF algorithm.
	- **IS-IS (Intermediate System to Intermediate System)** → link-state, ISP-scale, less common in enterprise.
- **AWS Context:**
	- Not used inside AWS VPCs (AWS uses static routes).
	- May be used **on-premises**, then redistributed into **BGP** for AWS Direct Connect or VPN.

---

## **3. EGP (Exterior Gateway Protocols) – Between Networks/AS**
- **Purpose:** Routing **between different Autonomous Systems** (e.g., AWS ↔ Internet, AWS ↔ On-Prem).
- **Key Protocol:**
	- **BGP (Border Gateway Protocol)**
		- Path-vector protocol → routing decisions based on policy, not just shortest path.
		- Foundation of Internet routing.
		- Supports thousands of routes, scalable for WANs.
- **AWS Context:**
	- Used in **Direct Connect** to exchange routes between your network and AWS.
	- Used in **Site-to-Site VPN** (dynamic routing option).
	- Used in **Transit Gateway** for propagating routes.
	- Backbone of **Global Accelerator** (anycast IPs advertised worldwide).
	- Determines which AWS Region/edge is “closest” for multi-Region/global apps.

---

## **4. Anycast Routing (BGP-Based)**
- **Definition:** Same IP address advertised from multiple locations; BGP routes users to the **nearest location**.
- **Use Cases:**
	- **AWS Global Accelerator** → 2 static anycast IPs for global apps.
	- DNS root servers, CDNs, DDoS mitigation.
- **Benefit:** Users worldwide connect to the nearest edge → low latency, automatic failover.

---

## **5. DNS-Based Routing (Not a protocol, but important)**
- **Amazon Route 53** provides application-level traffic steering:
	- **Latency-based routing** → pick closest Region.
	- **Geo-location routing** → send traffic based on user’s geography.
	- **Weighted routing** → blue/green or canary deployments.
	- **Failover routing** → active/passive disaster recovery.
- **Key Distinction:** Route 53 = DNS-level routing; not the same as IP routing protocols (but often combined).

---

## **6. AWS-Specific Routing Concepts**
- **VPC Route Tables:** Static routes inside AWS (no OSPF/IGP).
- **Transit Gateway:** Supports dynamic route propagation with BGP over VPN/Direct Connect.
- **Direct Connect + VPN:** Dynamic routing with BGP; static routing also possible.
- **Hybrid/Multi-Cloud:** Typically use **BGP** to exchange routes across providers.

---

## **Exam Tips**
- **IGP = inside your enterprise network (OSPF/EIGRP/RIP/IS-IS).**
- **EGP = between networks (BGP).**
- **AWS VPCs = static route tables (no dynamic IGP inside).**
- **Direct Connect / VPN = BGP for dynamic routing.**
- **Global Accelerator = anycast IPs with BGP.**
- **Route 53 = DNS-based routing (not IP routing).**

---

## **Quick Memory Hooks**
- **Static** = simple, inside AWS VPC.  
- **OSPF/EIGRP** = enterprise LAN/WAN.  
- **BGP** = AWS ↔ Internet / On-Prem / Multi-Region.  
- **Anycast** = one IP, many locations (Global Accelerator).  
- **Route 53** = DNS traffic steering, not packet routing.  

---

## **References**
- [AWS Transit Gateway + BGP](https://docs.aws.amazon.com/vpc/latest/tgw/what-is-transit-gateway.html)  
- [AWS Direct Connect Routing](https://docs.aws.amazon.com/directconnect/latest/UserGuide/Welcome.html)  
- [Global Accelerator](https://docs.aws.amazon.com/global-accelerator/)  
- [OSPF Overview (Cisco)](https://www.cisco.com/c/en/us/td/docs/ios-xml/ios/ospf/configuration/xe-3s/ospf-xe-3s-book.html)  