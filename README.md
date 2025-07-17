# OWASP Juice Shop - Privacy Policy Challenge (All Methods)

## Overview

This repository demonstrates **six different technical methods** to solve the **Privacy Policy Challenge** in OWASP Juice Shop — a modern intentionally vulnerable web app built with Angular.  
Each method reflects a unique **security testing or exploitation technique**, ranging from simple UI interaction to browser automation and proxy-based tampering.

Each folder contains:
- A `README.md` explaining the technique in depth
- A `TODO.md` guiding execution

---

## Challenge Objective

**Trigger the route `/privacy-security/privacy-policy`** to complete the privacy policy challenge.  
This route loads the Privacy Policy page and invokes internal logic that marks the challenge as solved.

---

## Methods Implemented

| # | Method Name                    | Description |
|--:|-------------------------------|-------------|
| 1 | **Clicking-The-Footer-Link**  | Scroll and click the footer’s Privacy Policy link |
| 2 | **Using-The-Hamburger-Menu**  | Open side menu and click Privacy Policy under Legal |
| 3 | **Direct-URL-Access**         | Manually enter the route in the browser address bar |
| 4 | **JavaScript-Injection**      | Use browser console to set `window.location.hash` |
| 5 | **Automated-Solution**        | Trigger the route programmatically using Puppeteer |
| 6 | **Proxy-Based-Route-Trigger** | Inject navigation script using Burp/ZAP proxy interception |

---

## Usage Instructions

1. Clone this repo:
   ```bash
   git clone https://github.com/YourUsername/OWASP-Juice-Shop-Privacy-Policy-Challenge.git
   cd OWASP-Juice-Shop-Privacy-Policy-Challenge

