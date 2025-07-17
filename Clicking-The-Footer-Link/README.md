# Clicking the Footer Link - Privacy Policy Challenge

## 🧠 Objective
Trigger the Privacy Policy challenge by **manually clicking** the `Privacy Policy` link located in the **footer** of the OWASP Juice Shop application.

## 🧩 Challenge Context
Juice Shop tracks user interaction with specific routes. Visiting the `/privacy-security/privacy-policy` path via Angular routing will satisfy this challenge. In this case, we solve it through direct **user interaction** without using automation, proxy tools, or code injections.

## 🔍 Technical Overview

- **SPA Navigation (Angular):** Juice Shop uses Angular; clicking internal links changes the route using `Router.navigate()`, not full-page reloads.
- **DOM Events:** Clicking the link triggers a DOM event bound to Angular's routing logic.
- **Challenge Resolver:** Juice Shop monitors route transitions and registers challenge completion when the specific route is rendered in the browser context.

## 🧰 Prerequisites
- Juice Shop instance must be running (local or hosted).
- Browser access with no extensions/scripts altering functionality.

## 🪜 Manual Steps

1. **Launch Juice Shop in Your Browser**
   - Example: `http://localhost:3000` or a deployed instance.

2. **Scroll to the Page Footer**
   - Use your mouse, scrollbar, or `Page Down` key.
   - Locate the footer area containing legal or informational links.

3. **Click the ‘Privacy Policy’ Link**
   - Visible under footer sections like `About`, `Legal`, or `Info`.
   - Click it to trigger internal route navigation.

4. **Observe the Route**
   - Angular will redirect to: `/#/privacy-security/privacy-policy`.

5. **Challenge Completion**
   - A toast notification will appear:
     > ✅ Challenge solved: Privacy Policy

## ✅ Expected Result
- Route `/privacy-security/privacy-policy` is loaded.
- Visual confirmation with the Privacy Policy content.
- Challenge tracker marks this task as completed.

## 🧪 No Tools or Scripts Needed
This challenge is meant to be solved **natively through the UI** to emphasize understanding of how client-side routing and DOM interaction work.

---
