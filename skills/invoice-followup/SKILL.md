---
name: invoice-followup
description: Draft payment reminder emails for unpaid invoices, escalating by how overdue they are. Use when the user mentions an unpaid, late, or overdue invoice, or asks how to chase a payment.
---

# Invoice Follow-up

Write the right reminder for how late the invoice is. Tone escalates with time; the relationship is preserved until the last stage.

## Inputs to collect

- Invoice number, amount, original due date, today's date
- Client contact name and whether there's an accounts-payable contact
- Any prior reminders already sent
- Payment terms / late-fee clause in the contract (if the user has one)

If the user gives only "client X hasn't paid", ask for amount and due date — nothing else is required.

## Escalation ladder

Pick the stage from days overdue. Never skip stages unless the user asks.

| Days overdue | Stage | Tone | Length |
|---|---|---|---|
| −3 to 0 | Courtesy heads-up | Friendly, assumes it's in progress | 3 sentences |
| 1–7 | Reminder | Warm, factual, offers help | 4–5 sentences |
| 8–21 | Firm | Direct, states consequence (work pause), asks for a date | 5–6 sentences |
| 22–45 | Final notice | Formal, references terms, sets a hard deadline, late fee if contract allows | 6–8 sentences |
| 45+ | Pre-collections | Formal, states next action (collections / legal / platform dispute), no pleasantries | Short |

## Rules for every stage

- Subject line contains invoice number and amount: `Invoice #1042 — €1,200 — [stage word]`
- First sentence states the fact (invoice, amount, due date). No "hope you're well" after stage 1.
- One clear ask with a date: "Can you confirm payment by Thursday 23 Oct?"
- Re-attach or re-link the invoice every time; assume it was lost.
- Offer the easiest payment path (link, IBAN) in the body.
- Never apologize for asking. Never threaten anything the user won't do.
- At Firm stage and later: pause-of-work sentence is mandatory — "I'll hold the remaining deliverables until this is settled."
- Late fees only if the contract has a clause; otherwise don't mention them.

## Output

Return:
1. The email (subject + body), ready to send.
2. A one-line **next check** — the date to follow up again and which stage comes next.
3. If stage ≥ Firm: a 2-bullet note on what to prepare (contract clause, record of delivery) in case it escalates.
