# JavaScript Injection - Privacy Policy Challenge

## Objective
Use **JavaScript injection in the browser console** to programmatically trigger the navigation to the Privacy Policy route and solve the challenge.

## Technical Explanation

- **JavaScript Injection**: Manually running JavaScript in the browser's DevTools console to execute privileged actions.
- **Single Page Application (SPA)**: Juice Shop uses Angular. All views are rendered client-side via routing.
- **Angular Router Object**: Angular exposes the routing system internally, which can be accessed via `ng` global context or by targeting DOM elements using Angular services.
- **`window.location.hash`**: A direct and simpler way to change Angular's route in hash-based routing (`/#/xyz`).

## Why It Works

- Manually setting `window.location.hash` bypasses UI and triggers Angular routing.
- When the route `/privacy-security/privacy-policy` is activated, Juice Shop recognizes it and completes the challenge.

## Prerequisites

- Juice Shop running.
- Access to browser DevTools.

## Steps

1. **Open Juice Shop**
   - Example: `http://localhost:3000`

2. **Open Developer Tools Console**
   - Shortcut: `Ctrl+Shift+I` (Windows/Linux), `Cmd+Opt+I` (Mac)
   - Navigate to `Console` tab.

3. **Inject JavaScript**
   - Enter the following:
     ```js
     window.location.hash = '/privacy-security/privacy-policy';
     ```
   - Press `Enter`.

4. **Observe the Route Change**
   - Angular automatically loads the Privacy Policy component.

5. **Challenge Auto-Trigger**
   - Juice Shop will detect this route and mark the challenge as solved.

## Expected Output

- **Toast Notification**: `🎉 Challenge solved: Privacy Policy`
- **URL**: Updated to include `/#/privacy-security/privacy-policy`
- **Content**: Privacy Policy text is rendered

