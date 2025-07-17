# ✅ TODO - Dev-Tools-Network-Trick Method

## 🎯 Goal
Programmatically or manually access the hidden Privacy Policy page via browser developer tools and confirm challenge completion.

---

## 🔍 Step-by-Step Checklist

- [ ] **Launch Juice Shop Instance**
  - Ensure the application is running and accessible in the browser.

- [ ] **Open Developer Tools**
  - Press `F12` or `Ctrl+Shift+I` to open DevTools.
  - Navigate to the `Network` tab.

- [ ] **Observe Internal Navigation**
  - Refresh the page and monitor any internal calls to `/privacy-security/privacy-policy`.
  - Identify if SPA routing logic references this route.

- [ ] **Manually Navigate Using Console**
  - Inject route directly using:
    ```js
    window.location.href = '/#/privacy-security/privacy-policy';
    ```

- [ ] **Observe Page Behavior**
  - Wait for the DOM to update.
  - Confirm visibility of Privacy Policy content.
  - Look for console message: `Privacy Policy page loaded...`

- [ ] **Capture Evidence**
  - Take a screenshot showing:
    - The visible Privacy Policy
    - Toast message: ✅ *"Challenge solved"*
    - Console output and Network tab if needed

- [ ] **Document Findings**
  - Log technique, response headers, and request flow
  - Note any exposed internal JS routes or lazy-loaded components

---

## 🧪 Optional Automation (Future Task)

- [ ] Write Puppeteer/Selenium script to simulate DevTools logic
- [ ] Automatically capture DOM text and toast notification
- [ ] Export report or PDF as challenge proof

