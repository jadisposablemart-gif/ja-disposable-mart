# J.A Disposable Mart — Proper Online Order Version

This version uses Cloudflare Pages Functions + D1 for permanent online order storage.

Features:
- Customer catalogue/search/cart
- No minimum quantity
- Custom item request
- Order form
- Orders saved online in D1
- WhatsApp order handoff to 9477221145
- Password-protected admin order list
- Admin status: New / Confirmed / Packed / Delivered / Cancelled

## Deploy outline
1. Create a Cloudflare Pages project connected to this folder/repository.
2. Create a Cloudflare D1 database named `ja-disposable-mart-db`.
3. Run `schema.sql` against that D1 database.
4. Put the real D1 database ID into `wrangler.jsonc`.
5. Set a strong `ADMIN_PASSWORD` as a secret/environment variable.
6. Deploy with Pages Functions enabled.

Cloudflare Pages Functions cannot be deployed through the dashboard's Direct Upload flow; use Git integration or Wrangler for this full-stack version.

Important:
- Do not keep the sample admin password in production.
- WhatsApp remains the customer communication channel; the database is the source of truth for orders.
