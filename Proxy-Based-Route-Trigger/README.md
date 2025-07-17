# Proxy-Based Route Trigger - Privacy Policy Challenge

## Objective
Solve the Privacy Policy challenge by **modifying HTTP traffic through an intercepting proxy** like Burp Suite or OWASP ZAP to forcefully trigger the target route.

## Technical Explanation

- **Intercepting Proxy**: Tools like Burp Suite intercept HTTP(S) traffic between your browser and the application.
- **Angular Apps**: Juice Shop uses Angular’s SPA model, where routes are handled client-side. However, traffic still flows (initial app bootstrap, route hints, and challenge telemetry).
- **Forced Navigation via Script Injection or History API**:
  - You can inject JavaScript using Burp/ZAP into the HTML or response body to **force** the browser to navigate to `/#/privacy-security/privacy-policy`.

## Real-World Analogy

This is like **tampering with the content sent to the browser** so that the app behaves differently without user interaction — often used to test client-side trust boundaries.

---

## Tools Needed

- [ ] Burp Suite (Community Edition is enough)
- [ ] Browser proxy setup
- [ ] Juice Shop running (local or hosted)

---

## Steps

1. **Set Browser to Use Burp/ZAP as Proxy**
   - Example proxy: `127.0.0.1:8080`

2. **Launch Burp Suite**
   - Start Intercept
   - Open `Proxy → Intercept → Intercept is ON`

3. **Open Juice Shop in the Browser**
   - Visit: `http://localhost:3000`

4. **Intercept the First HTML Response**
   - Catch the main GET request to `/`
   - Modify response **before it renders**

5. **Inject JavaScript to Force Navigation**
   - In the `<head>` tag, add:
     ```html
     <script>
       window.location.hash = '/privacy-security/privacy-policy';
     </script>
     ```

6. **Forward the Modified Response**
   - Click **Forward** in Burp.
   - The browser will parse the injected script and navigate instantly.

7. **Observe the Trigger**
   - The Privacy Policy page loads.
   - Challenge will be auto-marked as solved.

---

## Expected Output

- Browser navigates to the target route on load.
- Toast Message: `🎉 Challenge solved: Privacy Policy`
- URL: `http://localhost:3000/#/privacy-security/privacy-policy`

