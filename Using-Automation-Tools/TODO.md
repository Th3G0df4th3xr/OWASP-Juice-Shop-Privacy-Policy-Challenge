📁 OWASP-Juice-Shop-Privacy-Policy-Challenge/Using-Automation-Tools/TODO.md
markdown
Copy
Edit
# ✅ TODO - Using-Automation-Tools Method

## 🎯 Goal
Fully automate the discovery and triggering of the hidden privacy policy route using headless browser tools to simulate a user accessing the Angular SPA route directly and solving the challenge.

---

## 🔧 Automation Setup Tasks

- [ ] **Initialize Project**
  - Create project directory:
    ```
    mkdir Using-Automation-Tools && cd Using-Automation-Tools
    npm init -y
    ```

- [ ] **Install Playwright**
  - Add dependency:
    ```
    npm install playwright
    ```

- [ ] **Create Automation Script**
  - Create file: `privacy-policy-playwright.js`
  - Paste script:
    ```js
    const { chromium } = require('playwright');
    (async () => {
      const browser = await chromium.launch({ headless: false });
      const page = await browser.newPage();
      await page.goto('http://localhost:3000/#/privacy-security/privacy-policy', { waitUntil: 'load' });
      await page.waitForSelector('mat-card');
      try {
        await page.waitForSelector('.mat-simple-snackbar', { timeout: 3000 });
        const toast = await page.$eval('.mat-simple-snackbar', el => el.textContent.trim());
        console.log(`Toast Message: ${toast}`);
      } catch {
        console.log('No toast message detected.');
      }
      await page.screenshot({ path: 'privacy-policy-playwright.png', fullPage: true });
      await browser.close();
    })();
    ```

- [ ] **Run Automation**
  - Execute script:
    ```
    node privacy-policy-playwright.js
    ```

---

## 📸 Verification Tasks

- [ ] Screenshot is saved as `privacy-policy-playwright.png`
- [ ] Toast message appears in terminal (e.g., ✅ "Challenge solved")
- [ ] HTML report (optional) confirms visual proof

---

## 📄 Documentation Tasks

- [ ] Write README.md explaining:
  - Objective of automation
  - How the route is triggered
  - Screenshot and toast evidence
- [ ] Archive artifacts:
  - Screenshot
  - HTML proof (optional)
  - Console logs

---

## 📌 Optional Enhancements

- [ ] Add `privacy-policy-report.html` for visual documentation
- [ ] Convert to headless mode for CI pipelines
- [ ] Add GitHub Actions workflow to auto-run on push
