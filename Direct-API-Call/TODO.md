Here is the technical `TODO.md` for the **OWASP Juice Shop Privacy Policy Challenge** using the **Direct-API-Call** method:

---

### 📁 `OWASP-Juice-Shop-Privacy-Policy-Challenge/Direct-API-Call/TODO.md`

````markdown
# ✅ TODO - Direct-API-Call Method

## 🎯 Goal
Manually or programmatically access the `/privacy-security/privacy-policy` route to solve the Privacy Policy challenge using direct route/API call techniques.

---

## 🔍 Step-by-Step Checklist

- [ ] **Start Juice Shop Application**
  - Ensure the target instance is running on a known host/IP.

- [ ] **Discover Internal Routes**
  - Open DevTools → `Sources`
  - Search for Angular route: `privacy-policy`
  - Note the path: `/#/privacy-security/privacy-policy`

- [ ] **Use Direct API Call or Route Access**
  - Option 1: Open in browser:
    ```
    https://<host>/#/privacy-security/privacy-policy
    ```
  - Option 2: Console-based fetch call:
    ```js
    fetch('/#/privacy-security/privacy-policy');
    ```
  - Option 3: Use HTTP client (e.g., Postman/Burp):
    ```
    GET /#/privacy-security/privacy-policy
    Host: <target-host>
    ```

- [ ] **Confirm Challenge Trigger**
  - Check for toast message: ✅ *"Challenge solved"*
  - Inspect DOM for privacy policy content.

- [ ] **Capture Proof**
  - Screenshot visible page + toast
  - Export request/response logs (Postman or Burp Suite)

- [ ] **Document the Flow**
  - Note route structure, HTTP status, headers, and response time
  - Identify if route access required authentication (usually does not)

---

## 🧪 Optional Enhancements

- [ ] Automate route access using:
  - `curl`:
    ```bash
    curl -i http://<host>/#/privacy-security/privacy-policy
    ```
  - `fetch()` script embedded into a browser extension
- [ ] Log page state using `document.body.innerHTML` snapshot for offline proof

````

🐍 Python: requests Example
python
Copy
Edit
import requests

# Juice Shop base URL (change as needed)
url = "http://localhost:3000/#/privacy-security/privacy-policy"

headers = {
    "User-Agent": "Mozilla/5.0 (Direct-API-Call)",
    "Accept": "text/html,application/xhtml+xml",
    "Connection": "close"
}

response = requests.get(url, headers=headers)

print(f"Status Code: {response.status_code}")
print("Response Snippet:\n")
print(response.text[:1000])  # Preview first 1000 characters
⚠️ Note: Since Juice Shop is a Single Page Application (SPA), this won’t trigger frontend route logic unless rendered by a headless browser. Use this for confirmation/logging, not solving.

🌐 Node.js: axios Example
js
Copy
Edit
const axios = require('axios');

// Juice Shop target URL (adjust as necessary)
const url = 'http://localhost:3000/#/privacy-security/privacy-policy';

axios.get(url, {
  headers: {
    'User-Agent': 'Mozilla/5.0 (Direct-API-Call)',
    'Accept': 'text/html,application/xhtml+xml',
    'Connection': 'close'
  }
})
.then(response => {
  console.log('Status:', response.status);
  console.log('Response Snippet:\n');
  console.log(response.data.substring(0, 1000)); // Show first 1000 chars
})
.catch(error => {
  console.error('Error:', error.message);
});
✅ Recommended for logging or recon, not solving the challenge unless combined with headless browser automation (puppeteer, selenium, etc.).
