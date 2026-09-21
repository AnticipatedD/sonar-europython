> ## Documentation Index
> Fetch the complete documentation index at: https://docs-builder.nativelyai.com/llms.txt
> Use this file to discover all available pages before exploring further.

# Getting started with native.builder

> Create your first native.builder project — brief agents, preview your app, upload files, sync to GitHub, and publish to a live URL.

This guide walks you through your first factory run: describe a product, let agents build it, preview the result, and publish it live. Most users finish in under 15 minutes — work that would traditionally take weeks and thousands in dev costs.

Builder is an **AI app builder** for founders, teams, and agencies who want **owned AI-native software** without wiring their own **AI execution stack**.

## Before you begin

* A native.builder account ([sign up at nativelyai.com](https://builder.nativelyai.com))
* A clear idea of what you want to build — even a one-sentence description works

New to the category? Read [AI software factory](/introduction/ai-software-factory) first.

## Create your first project

<Steps>
  <Step title="Sign in and open the dashboard">
    Go to [nativelyai.com](https://builder.nativelyai.com) and sign in. You'll land on your project dashboard.
  </Step>

  <Step title="Brief the factory">
    In the prompt box, describe the product you need. Be specific about the purpose, key screens, and must-have features — the clearer the brief, the less rework.

    **Example:** "Build a task manager with a sidebar, a list of tasks grouped by status, and the ability to add and complete tasks."
  </Step>

  <Step title="Watch agents build">
    Specialized agents generate your app and open a live preview. You'll see changes appear in real time as the Builder agent works. Browse the file explorer to inspect production code.
  </Step>

  <Step title="Iterate until it's right">
    Keep directing the agents — design tweaks, new pages, bug fixes. Each turn uses credits from your workspace pool. Incremental prompts cost less than big rewrites.
  </Step>
</Steps>

<Note>
  New projects start with the **Product Architect** — your factory's planning stage. It scopes the work before credits are spent on code. Switch to the **Builder agent** when you're ready to ship.
</Note>

## Ways to start a project

You don't have to start from a blank prompt. Depending on your workflow:

* **Describe from scratch** — Type what you want in the prompt box on the dashboard
* **Open an existing project** — Click any project card to continue where you left off
* **Use templates** — Browse available templates (availability depends on your plan)

## Edit your project

Once your project is open:

* **Chat** — Send messages in the chat panel to request changes
* **Preview** — View the running app in the preview panel
* **File explorer** — Browse and inspect generated source files
* **Versions** — Revert to earlier snapshots if something goes wrong (available on paid plans)

## Publish your app

When your app is ready to share:

<Steps>
  <Step title="Open publish settings">
    In your project, open **Settings → Publish** (or use the publish button in the project toolbar).
  </Step>

  <Step title="Publish">
    Click **Publish**. Builder builds and deploys your app to a live URL like `yourproject.nativelyai.app`.
  </Step>

  <Step title="Share the URL">
    Copy the URL and share it with collaborators, stakeholders, or users.
  </Step>
</Steps>

See [Publish your app](/features/publish) for details on unpublishing, custom domains, and branding.

## Upload files or download your code

Use the **Code** / **Docs** file tree to upload files and folders. To save the whole app locally, use **Download source code** in the bottom-right bar of the project page — details in [Files and download](/features/files-and-download).

## Connect GitHub (optional)

Want a remote repo for the project? Connect GitHub under **Settings → Integrations**, then use **Sync** on the project. Details: [GitHub Sync](/features/github-sync).

## Preview while you build

Your project runs in a live preview beside chat. You can refresh the preview without restarting the whole sandbox when you only need a redraw. Prefer the in-app preview controls over copying raw sandbox URLs.

## Next steps

<CardGroup cols={2}>
  <Card title="Prompting best practices" icon="message-square" href="/features/prompting">
    Get better results from your prompts.
  </Card>

  <Card title="Workspaces" icon="users" href="/features/workspaces">
    Turn your factory into a team workspace.
  </Card>

  <Card title="Plans & credits" icon="coins" href="/introduction/plans-and-credits">
    Understand how credits are used.
  </Card>
</CardGroup>
