# Direct URL Access - Privacy Policy Challenge

## Objective
Trigger the Privacy Policy challenge by **manually visiting the route URL** `/#/privacy-security/privacy-policy` in the browser's address bar, bypassing the UI.

## Technical Explanation

- **Angular Routing**: Juice Shop is built with Angular, a Single Page Application (SPA) framework. It uses `RouterModule` to define front-end routes.
- **Hash-Based Routing (`/#/`)**: In Angular, URLs prefixed with `#` (`/#/xyz`) are client-side routes, processed without full page reload.
- **Challenge Resolver**: Juice Shop has route guards or resolvers that trigger internal challenge-completion logic when you access a specific route.

## Why It Works

- No user interaction is required; the route alone is enough.
- Angular internally renders the correct view and updates state.
- The logic that awards the "Privacy Policy" challenge is invoked once the route becomes active.

## Prerequisites

- Juice Shop must be running (local or hosted).
- A modern browser (Chrome/Firefox).

## Steps

1. **Open Juice Shop**
   - Example URL: `http://localhost:3000`

2. **Manually Change the URL**
   - In the address bar, append: `/#/privacy-security/privacy-policy`
   - Final URL: `http://localhost:3000/#/privacy-security/privacy-policy`

3. **Press Enter to Navigate**
   - This triggers Angular to load the Privacy Policy component.

4. **Wait for Challenge Toast**
   - A toast (popup) will confirm that the challenge is solved:
     > 🎉 Challenge solved: Privacy Policy

## Expected Output

- **Toast Notification**: Confirms challenge completion.
- **Content**: Privacy Policy is rendered.
- **URL**: Visible route: `/privacy-security/privacy-policy`

