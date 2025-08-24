## **Overview**
**BGP (Border Gateway Protocol)** is the **path-vector routing protocol** that connects Autonomous Systems (AS) together.  
It’s the protocol that literally makes the **Internet work** — each AS advertises the IP prefixes it can reach, and other ASes learn to forward traffic accordingly.

---

## **Key Behaviors**

### **1. Route Advertisement**
- Routers **advertise prefixes** (IP ranges) they can reach to their neighbors (peers).  
- Example: AWS (ASN 16509) advertises `52.0.0.0/8` to ISPs.  
- Neighbors update their routing tables to include that prefix.

### **2. Path Vector (AS_PATH)**
- Each advertised route includes the **list of ASNs** it passed through.  
- Prevents loops and lets routers apply policy (prefer shorter paths).  
- Example: Route to `203.0.113.0/24` might show path: `AS 65000 → AS 65500 → AS 16509`.

### **3. Policy-Based Decisions**
BGP doesn’t just pick “shortest path.” It follows rules:  
1. **Highest Local Preference** → prefer internal policy (e.g., primary ISP).  
2. **Shortest AS_PATH** → fewer AS hops.  
3. **Lowest Origin Type** (IGP > EGP > Incomplete).  
4. **Lowest MED (Multi-Exit Discriminator)**.  
5. **eBGP > iBGP** (prefer external over internal).  
6. **Lowest Router ID** (tie-breaker).  

👉 Means you can control routing **with policy**, not just distance.

### **4. Incremental Updates**
- Unlike IGPs (like OSPF), BGP does **not flood full tables**.  
- Sends **incremental updates** only when routes change.  
- More stable at Internet scale.

### **5. Peering Types**
- **eBGP** (external BGP) → between different ASNs (e.g., your network ↔ AWS).  
- **iBGP** (internal BGP) → inside one AS, used when multiple border routers exist.

---

## **AWS Context**
- **Direct Connect / VPN**: Uses **BGP** to dynamically exchange routes between your ASN and AWS’s ASN.  
- **Transit Gateway**: Uses BGP for route propagation in hybrid networking.  
- **Global Accelerator**: AWS advertises the same anycast IPs via BGP from multiple edges.  
- **Private ASN** vs **Public ASN**:  
	- Private ASN → used for private routing (not on Internet).  
	- Public ASN → registered, used for Internet peering.  

---

## **Behavior Summary**
- BGP is **path-vector, policy-driven, incremental**.  
- Each AS **advertises prefixes** → others decide best path based on **policy and AS_PATH**.  
- The global Internet routing table is the **sum of all BGP advertisements**.  

---

## **Exam Tips**
- If question = **AWS ↔ On-Prem route exchange** → **BGP**.  
- If question = **Advertise routes on the Internet** → **BGP with Public ASN**.  
- Remember: **IGP (OSPF/EIGRP)** = inside AS, **BGP** = between ASes.  
- **Anycast IPs** (Global Accelerator) = BGP advertises the same prefix from multiple edges.  

---

## **References**
- [AWS Direct Connect and BGP](https://docs.aws.amazon.com/directconnect/latest/UserGuide/Welcome.html)  
- [BGP Basics (Cisco)](https://www.cisco.com/c/en/us/support/docs/ip/border-gateway-protocol-bgp/2005-03.html)  