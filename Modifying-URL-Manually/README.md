🛡️ OWASP-Juice-Shop-Privacy-Policy-Challenge
Method: Modifying-URL-Manually
🧠 Objective
Bypass the absence of UI elements or links and manually modify the browser URL to directly access the hidden client-side route: /#/privacy-security/privacy-policy. This reveals protected or unlisted content rendered by Angular’s routing engine.

🛠️ Prerequisites
Browser with JavaScript enabled

Basic understanding of Single Page Application (SPA) routing

Juice Shop instance (running locally or on a remote server)

Console or URL bar manipulation skills

🕵️‍♂️ Exploitation Methodology
Step 1: Load Juice Shop Normally
Navigate to:

arduino
Copy
Edit
http://localhost:3000/
Step 2: Modify the Browser URL
In the URL bar, manually change the route to:

bash
Copy
Edit
http://localhost:3000/#/privacy-security/privacy-policy
Press Enter to navigate.

Step 3: Trigger Angular Route Rendering
The Angular SPA router interprets the hash-based path (#/privacy-security/privacy-policy) and mounts the associated component.

Step 4: Observe Behavior
The Privacy Policy content is rendered in the DOM.

A toast message appears: ✅ "Challenge solved"

Console may log: Privacy Policy page loaded...

🧬 Technical Insight
Juice Shop uses Angular’s hash-based routing. These routes do not involve full page reloads, and are handled entirely on the client side. By manipulating the hash fragment manually, attackers can force-load non-linked components. This mimics deep linking behavior, revealing UI elements not otherwise exposed via standard navigation.

🧯 Mitigation Recommendation
Enforce client-side route guards (e.g., Angular CanActivate) to restrict access.

Track unauthorized or direct route loads via instrumentation/logging.

Use backend validation to verify route authorization during API calls if tied to sensitive logic.

📁 Files
kotlin
Copy
Edit
OWASP-Juice-Shop-Privacy-Policy-Challenge/
├── Modifying-URL-Manually/
│   ├── README.md  ← (this file)
│   └── evidence/ (screenshots showing URL, toast, and page render)
