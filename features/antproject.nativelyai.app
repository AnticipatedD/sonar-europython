> ## Documentation Index
> Fetch the complete documentation index at: https://docs-builder.nativelyai.com/llms.txt
> Use this file to discover all available pages before exploring further.

# Custom domains for native.builder apps

> Connect your own domain to a published native.builder app, verify DNS, set a primary domain, and remove platform branding.

Custom domains let you serve your published app from your own URL (e.g., `app.yourcompany.com`) instead of the default `*.nativelyai.app` subdomain. For teams building **custom AI business software**, a branded domain signals that you **own the software** — not just rent space on a vendor subdomain.

<Note>
  Custom domains are available on **Builder plans** and above. Free plans use the default platform subdomain only.
</Note>

## Platform subdomain

Every project gets a default platform subdomain when created:

```
yourproject.nativelyai.app
```

On supported plans, you can **rename** your platform subdomain. Old subdomains redirect to the new one for up to one year, giving you time to update links.

## Connect a custom domain

<Steps>
  <Step title="Publish your app">
    Your app must be published before connecting a custom domain. See [Publish your app](/features/publish).
  </Step>

  <Step title="Open domain settings">
    In your project, go to **Settings → Domains**.
  </Step>

  <Step title="Enter your hostname">
    Type the domain you want to connect — either a subdomain (`app.example.com`) or an apex domain (`example.com`).
  </Step>

  <Step title="Configure DNS">
    Builder shows the DNS records you need to add at your domain registrar. The records differ depending on whether you're connecting a subdomain or apex domain:

    | Domain type                             | Records                                  |
    | --------------------------------------- | ---------------------------------------- |
    | **Subdomain** (e.g., `app.example.com`) | CNAME record + TXT verification record   |
    | **Apex** (e.g., `example.com`)          | A/AAAA records + TXT verification record |
  </Step>

  <Step title="Wait for verification">
    After adding DNS records, Builder verifies ownership and provisions an SSL certificate. Status updates appear in the domains panel — no page refresh needed.
  </Step>
</Steps>

<Warning>
  DNS changes can take up to 48 hours to propagate, though most providers update within minutes. You need access to your domain's DNS settings to complete setup.
</Warning>

## Domain limits

* Up to **5 custom domains** per environment (production, staging, dev) per project
* Only **one primary domain** per environment at a time
* Domains are scoped per environment — production and staging can have different domains

## Domain status

Your domain moves through these states:

| Status                   | Meaning                                               |
| ------------------------ | ----------------------------------------------------- |
| **Pending verification** | Waiting for DNS records to be detected                |
| **Certificate issuing**  | Ownership verified, SSL certificate being provisioned |
| **Active**               | Domain is live and serving your app                   |
| **Error**                | Verification or certificate issue — check DNS records |

## Disconnect a domain

To remove a custom domain:

1. Open **Settings → Domains**
2. Select the domain
3. Click **Disconnect**

Your app continues to be available on the default `*.nativelyai.app` URL.

## Next steps

<CardGroup cols={2}>
  <Card title="Publish your app" icon="globe" href="/features/publish">
    Make sure your app is published before connecting a domain.
  </Card>

  <Card title="Plans & credits" icon="coins" href="/introduction/plans-and-credits">
    Check custom domain limits for your plan.
  </Card>
</CardGroup>
