# Using The Hamburger Menu - Privacy Policy Challenge

## Objective
Solve the Privacy Policy challenge by accessing the route via the **Hamburger Menu**, which is the collapsible side navigation menu commonly seen in mobile-responsive UIs.

## Technical Context

- **Hamburger Menu**: A UI component (☰ icon) used to toggle side navigation. In Juice Shop, this opens the `MatDrawer` from Angular Material.
- **Angular RouterLink**: The navigation items in the menu use `[routerLink]` bindings, which call `Router.navigate()` without reloading the SPA.
- **Challenge Hook**: Juice Shop internally listens for the `/privacy-security/privacy-policy` route activation. Once routed, the backend updates challenge state and renders content.

## Pre-requisites
- Juice Shop app running and accessible.
- Use browser with DevTools (optional) for inspection, but not required.

## Steps

1. **Open Juice Shop in Your Browser**
   - Example: `http://localhost:3000`

2. **Locate the Hamburger Menu (☰)**
   - Found at the **top-left corner** of the page.
   - Typically a 3-bar icon.

3. **Click the Hamburger Menu**
   - This opens the **side drawer**.
   - The menu contains links grouped under sections like:
     - About Us
     - Legal
     - Account

4. **Click on ‘Privacy Policy’**
   - Scroll the drawer if required.
   - Click `Privacy Policy` under the `Legal` section.
   - Angular triggers route change: `/#/privacy-security/privacy-policy`

5. **Observe the Result**
   - The Privacy Policy page renders.
   - Challenge system detects access and marks it as solved.

## Expected Output

- **Toast Message**: `🎉 Challenge solved: Privacy Policy`
- **URL**: Changes to include `/privacy-security/privacy-policy`
- **Content**: Privacy Policy text shown in main panel
