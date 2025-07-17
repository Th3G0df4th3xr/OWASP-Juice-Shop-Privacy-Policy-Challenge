Here's a highly technical `README.md` content for the **OWASP Juice Shop Privacy Policy Challenge** using the **Direct API Call** method:

---

# 🛡️ OWASP-Juice-Shop-Privacy-Policy-Challenge

## Method: `Direct-API-Call`

### 🧠 Objective

Trigger the hidden privacy policy logic by directly interacting with internal API endpoints or routes exposed by the frontend application, bypassing user interface limitations and revealing unauthorized content.

---

### 🛠️ Prerequisites

* HTTP client (e.g., Postman, cURL, Burp Repeater)
* Juice Shop instance URL (local or remote)
* Understanding of RESTful routing and JSON response parsing
* Familiarity with how Single Page Applications handle routing on the client side

---

### 🕵️‍♂️ Exploitation Methodology

#### Step 1: Intercept JavaScript Routing

* Load the Juice Shop in a browser.
* Open DevTools → `Sources` tab.
* Locate and inspect `main.js` or Angular route definitions to discover hidden paths like:

  ```
  /#/privacy-security/privacy-policy
  ```

#### Step 2: Trigger the API Logic

* Use browser console or direct URL manipulation:

  ```
  https://<host>/#/privacy-security/privacy-policy
  ```

  OR issue a direct fetch call to simulate internal navigation:

  ```js
  fetch('/#/privacy-security/privacy-policy');
  ```

#### Step 3: Use API Client for Route Simulation

* Send a direct GET request:

  ```http
  GET /#/privacy-security/privacy-policy HTTP/1.1
  Host: <target>
  ```

> Note: Since Juice Shop is a Single Page Application, the real interaction is with the frontend route, but this call mimics a user arriving at the route manually.

#### Step 4: Validate Challenge Completion

* The app internally renders the policy content and shows the toast notification:
  ✅ *"Challenge solved"*
* Confirm the DOM or response data includes privacy-related text.

---

### 🧬 Technical Insight

This method abuses the trust in client-side routing by directly hitting the endpoint without user interaction. Juice Shop does not enforce access restrictions on route-level components and relies on visibility constraints to obscure sensitive sections. The API call or route visit triggers Angular component rendering, effectively solving the challenge programmatically.

---

### 🧯 Mitigation Recommendation

* Implement route guards to verify access permissions for sensitive paths.
* Introduce server-side controls to validate navigation attempts.
* Monitor unusual requests to `/#/privacy-security/*` patterns using a WAF or logging middleware.

---

### 📁 Files

```
OWASP-Juice-Shop-Privacy-Policy-Challenge/
├── Direct-API-Call/
│   ├── README.md  ← (this file)
│   └── evidence/ (e.g., screenshots, request logs)
```

---

PoC script (e.g., `curl`, `axios`, `fetch`) to automate this method.
