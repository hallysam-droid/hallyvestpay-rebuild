# Hallyvestpay Rebuild – Revised Phase 1 Assessment

This revised Phase 1 assessment aligns directly with your latest rebuild directives and keeps data safety as the top priority.

## 1) Database Snapshot (from `if0_41349564_hallyvestpay.sql`)

The schema remains consistent with the current implementation.

### Core tables
- `users`
- `deposits`
- `withdrawals`
- `investments`
- `transactions`
- `notifications`
- `commissions`
- `bonus_codes`
- `crashed_plans`

### Support tables
- `admin_logs` (admin gate/login auditing)
- `chatbot_messages` (user-bot/admin chat history)

## 2) Critical Functional Logic (explicit requirements)

### Guest access (Zero Action Mode)
If an unregistered or logged-out visitor enters a page, the page can render, but all state-changing actions must be blocked server-side (submit, invest, deposit, withdraw, profile/account updates).

### Deposit charge calculation
- Apply a 25% charge display rule on deposit input.
- Example: input `1000 NGN` → show: **"You'll receive 750 in your balance"**.

### Registration restrictions
- Show warning at top of registration page: **"Multiple Account are not Allowed"**.
- Enforce minimum age: **16+ years** using DOB validation.
- Enforce username compatibility with first name + last name.

### Permanent bank binding
In `account.php`, once a user binds bank details, those details become permanent (no edit/delete/rebind). Binding confirmation must require a valid Withdrawal PIN entry.

## 3) Refined UI & Architecture (from `hallyvestpay.txt`)

### Global assets
- Use `logo.png` and `favicon.png` on all suitable pages.

### Header requirements (home/dashboard)
- Left section: Logo + `Welcome, [Username]` + profile picture (fallback `👤`) + notification bell `🔔` with unread count.
- Right section: Menu button opening a pop-out with:
  - Logout
  - Delete Account
  - Refer and Earn
  - Redeem Code
  - My Account

### Dashboard layout
- Prominently display user balance (NGN).
- Prominently display referral code and referral link.
- Display action grid buttons (Deposit, Withdraw, Invest, Contact Support, Transactions, Invest Record, Register, Login) per blueprint behavior.

## 4) Updated Rebuild Order

1. `register.php` (multiple-account warning, 16+ DOB validation)
2. `login.php` (forgot password with phone + DOB)
3. `home.php` (dual-corner header + notification + action grid)
4. `account.php` (permanent bank binding + 4-digit withdrawal PIN)
5. `deposit.php` + `bank.php` (auto 25% charge display + Opay instructions)
6. `review.php` (proof upload + submit review workflow)
7. `profile.php` (profile picture + half-hidden sensitive fields)
8. `support.php` + `chatbot.php` (support surface, chat continuity, admin auto/manual behavior)
9. Admin suite rollout (`admin_gate.php`, `admin_not.php`, `usertrans.php`, plus other admin pages in controlled batches)

## 5) Security + Data Integrity Guardrails

- No destructive schema rewrites during initial recovery.
- Keep existing columns and enums compatible with production rows.
- Enforce role/session checks on every action endpoint.
- Use idempotent admin approval handlers for deposit/withdraw decisions.
- Preserve audit history in `transactions`, `deposits`, `withdrawals`, `notifications`, `admin_logs`.
- Respect existing admin gate requirement and configured passcode policy for `admin_gate.php` (current requested passcode: `abraham707`).

## 6) Next Implementation Step

Start coding **Page 1: `register.php`** with:
- Full form fields from blueprint
- `cancel.php` anti-multiple-account checks (phone/IP/email)
- 16+ DOB validation
- referral handling and success redirect behavior

Then pause for your validation before moving to `login.php`.
