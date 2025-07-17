📁 OWASP-Juice-Shop-Privacy-Policy-Challenge/Modifying-URL-Manually/TODO.md
markdown
Copy
Edit
# ✅ TODO - Modifying-URL-Manually Method

## 🎯 Goal
Manually alter the browser URL to access the hidden privacy policy route and trigger challenge logic using Angular’s client-side routing system.

---

## 🔍 Step-by-Step Checklist

- [ ] **Start Juice Shop**
  - Ensure the Juice Shop app is accessible (e.g., `http://localhost:3000`)

- [ ] **Open the Main Page**
  - Visit:
    ```
    http://localhost:3000/
    ```

- [ ] **Manually Modify the URL**
  - In the address bar, append the route:
    ```
    #/privacy-security/privacy-policy
    ```
  - Full URL becomes:
    ```
    http://localhost:3000/#/privacy-security/privacy-policy
    ```
  - Press `Enter` to trigger Angular routing

- [ ] **Verify Route Load**
  - The Privacy Policy page should be visible
  - Toast message should appear: ✅ *"Challenge solved"*
  - Open DevTools → Console to check for:
    ```
    Privacy Policy page loaded...
    ```

- [ ] **Capture Evidence**
  - Take a screenshot of:
    - Modified URL in the browser bar
    - Visible Privacy Policy content
    - Toast notification
    - Optional: Console message

- [ ] **Document the Route**
  - Note down the route path and component reference if inspecting JavaScript sources
  - Mention the lack of UI links leading to the page

---

## 🧪 Optional Next Steps

- [ ] Embed this route into a bookmarklet or auto-navigating script:
  ```js
  window.location.href = '/#/privacy-security/privacy-policy';
 Report this behavior as a missing access control or exposed route

 Suggest usage of Angular CanActivate route guard to prevent unauthorized loads

 Puppeteer automation script to simulate the Modifying-URL-Manually method for the OWASP Juice Shop Privacy Policy Challenge — it programmatically launches a browser, modifies the URL, waits for page rendering, and captures evidence.

📁 privacy-policy-manual-url.js
js
Copy
Edit
const puppeteer = require('puppeteer');

(async () => {
  const browser = await puppeteer.launch({
    headless: false,  // Set to true for headless run
    defaultViewport: null
  });

  const page = await browser.newPage();

  const juiceShopURL = 'http://localhost:3000/#/privacy-security/privacy-policy';

  console.log(`[+] Navigating to: ${juiceShopURL}`);
  await page.goto(juiceShopURL, { waitUntil: 'networkidle2' });

  // Wait for expected UI elements to appear
  await page.waitForSelector('mat-card'); // Assumes the policy page renders inside a <mat-card>

  // Optional: Wait for toast notification if triggered
  try {
    await page.waitForSelector('.mat-simple-snackbar', { timeout: 3000 });
    const toast = await page.$eval('.mat-simple-snackbar', el => el.textContent.trim());
    console.log(`[*] Toast Message: ${toast}`);
  } catch (e) {
    console.warn('[!] No toast message detected');
  }

  // Save screenshot as proof
  await page.screenshot({ path: 'privacy-policy-accessed.png', fullPage: true });
  console.log('[+] Screenshot saved as privacy-policy-accessed.png');

  await browser.close();
})();
🧪 Requirements
Install Puppeteer:

bash
Copy
Edit
npm install puppeteer
🔍 What This Script Does
Opens browser to http://localhost:3000/#/privacy-security/privacy-policy

Waits for page and toast (if any)

Captures screenshot proof of successful challenge route access

Playwright version of the automation script that simulates Modifying the URL Manually to solve the OWASP Juice Shop Privacy Policy Challenge, complete with screenshot and optional HTML report integration.

📁 privacy-policy-manual-url-playwright.js
js
Copy
Edit
const { chromium } = require('playwright');
const fs = require('fs');
const path = require('path');

(async () => {
  const browser = await chromium.launch({ headless: false }); // Set to true in CI
  const context = await browser.newContext();
  const page = await context.newPage();

  const targetURL = 'http://localhost:3000/#/privacy-security/privacy-policy';
  console.log(`[+] Navigating to: ${targetURL}`);

  await page.goto(targetURL, { waitUntil: 'load' });

  // Wait for Angular route to render
  await page.waitForSelector('mat-card');

  // Wait for toast message if present
  let toastText = '';
  try {
    await page.waitForSelector('.mat-simple-snackbar', { timeout: 3000 });
    toastText = await page.$eval('.mat-simple-snackbar', el => el.textContent.trim());
    console.log(`[✔] Toast message detected: "${toastText}"`);
  } catch (e) {
    console.warn('[!] Toast not found within timeout.');
  }

  // Screenshot evidence
  const screenshotPath = path.join(__dirname, 'privacy-policy-playwright.png');
  await page.screenshot({ path: screenshotPath, fullPage: true });
  console.log(`[+] Screenshot saved to: ${screenshotPath}`);

  // Save HTML report (basic proof)
  const reportPath = path.join(__dirname, 'privacy-policy-report.html');
  const htmlReport = `
    <html>
      <head><title>Privacy Policy Challenge Proof</title></head>
      <body>
        <h2>Privacy Policy Page Accessed</h2>
        <p><strong>URL:</strong> ${targetURL}</p>
        <p><strong>Toast Message:</strong> ${toastText || 'Not detected'}</p>
        <img src="privacy-policy-playwright.png" alt="Screenshot" width="800"/>
      </body>
    </html>
  `;
  fs.writeFileSync(reportPath, htmlReport);
  console.log(`[+] HTML report saved to: ${reportPath}`);

  await browser.close();
})();
🧪 Setup Instructions
Install Playwright and dependencies:

bash
Copy
Edit
npm init -y
npm install playwright
Run the script:

bash
Copy
Edit
node privacy-policy-manual-url-playwright.js
✅ Output
privacy-policy-playwright.png: Screenshot proof

privacy-policy-report.html: HTML report with embedded evidence

Let me know if you want:

A CI-ready GitHub Actions config to run this in headless mode

A PDF report export

Integration into a larger PoC framework (e.g., Lighthouse, Puppeteer+Burp, etc.)
