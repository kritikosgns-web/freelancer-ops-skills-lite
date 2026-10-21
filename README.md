# Freelancer Ops Skills: Lite (free)

[![skills.sh installs](https://skills.sh/b/runbooklabhq/freelancer-ops-skills-lite)](https://skills.sh/runbooklabhq/freelancer-ops-skills-lite)

Three free Claude Code skills for the three emails freelancers rewrite most often: the proposal, the "that wasn't in scope" reply, and the late-invoice chaser.

Each one is a `SKILL.md` with explicit inputs, decision rules and a fixed output format, so it's a procedure Claude follows rather than a one-off prompt. Describe the situation and Claude loads the matching skill.

| Skill | Say something like… | You get |
|---|---|---|
| `proposal-writer` | "Write a proposal from these call notes" | A 350–600 word proposal the client can approve in one read, plus risk notes on your brief |
| `scope-guard` | "The client asked for X. Is it included?" | In-scope / grey / change order / decline, and the reply already written |
| `invoice-followup` | "Invoice #1042 is 12 days late" | The right reminder for how overdue it is, from friendly nudge to final notice |

## Install

One line, any agent that reads `SKILL.md` (Claude Code, Cursor, Codex, Gemini CLI…):

```bash
npx skills add runbooklabhq/freelancer-ops-skills-lite
```

Or one skill only: `npx skills add runbooklabhq/freelancer-ops-skills-lite --skill proposal-writer`

Without Node:

```bash
git clone https://github.com/runbooklabhq/freelancer-ops-skills-lite
cd freelancer-ops-skills-lite
bash install.sh            # all your projects (~/.claude/skills)
bash install.sh --project  # current project only (./.claude/skills)
```

Restart Claude Code and type `/` to see them. They also work pasted into a Claude.ai Project, Cursor rules, or any agent that reads Markdown.

## Want the other seven?

The full pack adds `pricing-calculator`, `contract-review`, `client-onboarding`, `status-update`, `weekly-review`, `cold-outreach` and `testimonial-request`. Together the ten cover pricing a job, signing it, running it, getting paid and getting the next client.

**[Get the full 10-skill pack for €9 →](https://gumroad.com/l/freelancer-ops-skills?utm_source=github&utm_campaign=lite)**

Also on [Etsy](https://www.etsy.com/listing/4597264171/claude-code-skills-bundle-for).

Launching your own product? See **[Indie Launch Skills](https://gumroad.com/l/ppxgwi?utm_source=github&utm_campaign=lite)**: 8 skills for positioning, landing page, pricing, Product Hunt and launch review.


## Best value: all 18 skills

The **[Claude Skills Complete Bundle](https://gumroad.com/l/claude-skills-complete?utm_source=github&utm_campaign=fos-lite-bundle)** has both packs (10 Freelancer Ops + 8 Indie Launch) for €19 instead of €23.99. Single skills from $4.99 on [Agensi](https://www.agensi.io/bundles/freelancer-ops-skills-7-claude-code-skills-for-pricing-contracts-onboarding-clients).

## License

MIT for the three skills in this repo: use, modify and share them freely. The full packs are sold separately under their own license.

Not affiliated with or endorsed by Anthropic. "Claude" is a trademark of Anthropic, PBC.
