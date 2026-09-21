> ## Documentation Index
> Fetch the complete documentation index at: https://docs-builder.nativelyai.com/llms.txt
> Use this file to discover all available pages before exploring further.

# Workspaces in native.builder

> Run an internal AI software factory with native.builder workspaces — members, roles, shared credits, and integrations.

A workspace is your team's **factory floor** in Builder — the home for **enterprise AI workflow automation** across projects, billing, credit balance, and members. Every user belongs to at least one workspace.

Teams use workspaces as an **internal AI software factory**: one place to brief agents, review previews, and ship **owned AI-native software** together. See [AI software factory](/introduction/ai-software-factory) for how the full pipeline fits together.

## Workspace structure

```text theme={null}
Workspace
├── Members (with roles)
├── Billing & credits
└── Projects
    ├── Project A
    ├── Project B
    └── ...
```

All members in a workspace share the same credit pool and plan limits.

## Roles and permissions

| Role       | Can do                                                                                               |
| ---------- | ---------------------------------------------------------------------------------------------------- |
| **Owner**  | Full access — billing, settings, members, all projects. Cannot leave without transferring ownership. |
| **Admin**  | Manage members, settings, and all projects. Cannot delete the workspace.                             |
| **Member** | Create and edit projects, use AI chat, publish apps.                                                 |
| **Viewer** | View projects and previews. Cannot edit or publish.                                                  |
| **Guest**  | Limited access to specific shared projects.                                                          |

<Note>
  Exact permissions may vary by feature. Owners and Admins always have the highest level of access.
</Note>

## Invite teammates

<Steps>
  <Step title="Open member settings">
    Go to **Settings → Members** in your workspace.
  </Step>

  <Step title="Send an invite">
    Enter the teammate's email address and select a role. Click **Invite**.
  </Step>

  <Step title="They accept">
    The invitee receives an email with a link to join your workspace. Once accepted, they appear in the member list.
  </Step>
</Steps>

## Member limits by plan

| Plan     | Members   |
| -------- | --------- |
| Free     | 2         |
| Builder  | 3         |
| Pro      | 6         |
| Business | Unlimited |
| Scale    | Unlimited |

## Switch workspaces

If you belong to multiple workspaces, use the workspace switcher in the sidebar to change context. Each workspace has its own projects, credits, and billing.

## Leave a workspace

Members and Admins can leave a workspace from **Settings → Members**. Owners must transfer ownership before leaving.

## Enterprise team workflows

For **AI workflow builder for enterprise** use cases, workspaces give you:

* **Governed access** — Owner, Admin, Member, Viewer, and Guest roles
* **Shared credit pool** — One balance for the whole **enterprise AI factory**
* **Collaborative builds** — Multiple members directing agents on the same project

Agencies running an **AI software factory for consultants** often create one workspace per client engagement or per internal delivery team.

## Shared credits

All workspace members draw from the same credit balance. When anyone sends a chat message or runs AI generation, credits are deducted from the shared pool. Monitor your balance in the sidebar or **Settings → Billing**.

## Next steps

## Integrations

Connect GitHub, Supabase, BYOK model keys, and cloud file sources from **Settings → Integrations**. Start with the [Integrations](/features/integrations) guide, or jump to [GitHub Sync](/features/github-sync).

## Data connectors

Connect **Google Drive** or **Dropbox** from workspace settings so the team can use shared files while building. See [Data connectors](/features/data-connectors).

## Collaboration on connected projects

Workspace **members** can use chat on projects linked to **GitHub** or **Supabase**, not only owners and admins. Invite people from workspace member settings when you want them building alongside you.

<CardGroup cols={2}>
  <Card title="Plans & credits" icon="coins" href="/introduction/plans-and-credits">
    See member limits and features by plan.
  </Card>

  <Card title="Getting started" icon="rocket" href="/introduction/getting-started">
    Create your first project in a workspace.
  </Card>
</CardGroup>
