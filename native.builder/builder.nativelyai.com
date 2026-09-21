> ## Documentation Index
> Fetch the complete documentation index at: https://docs-builder.nativelyai.com/llms.txt
> Use this file to discover all available pages before exploring further.

# native.builder plans and credits

> Compare Free, Builder, Pro, Business, and Scale plans — how AI credits work, what uses credits, and how to manage billing.

native.builder runs on credits — you pay for agent output, not idle headcount. A Builder plan at \$20/mo replaces what would cost tens of thousands with an agency or months of contractor time. Credits are consumed when agents work: chat, code generation, and prompt enhancement. Your workspace shares a single credit pool across all members.

For **enterprise AI factory** deployments — SSO, SLAs, dedicated infrastructure — see [Enterprise](#enterprise) below or read [AI software factory](/introduction/ai-software-factory).

## Plans at a glance

| Plan           | Price    | Credits     | Best for                                        |
| -------------- | -------- | ----------- | ----------------------------------------------- |
| **Free**       | \$0      | 50 one-time | Trying Builder, first app                       |
| **Builder**    | \$20/mo  | 100/mo      | Solo developers shipping real projects          |
| **Pro**        | \$50/mo  | 400/mo      | Premium models, more projects, priority support |
| **Business**   | \$200/mo | 2,000/mo    | Teams, staged deploys, analytics                |
| **Scale**      | \$700/mo | 10,000/mo   | API access, webhooks, dedicated support         |
| **Enterprise** | Custom   | Custom      | SSO, SLAs, dedicated infrastructure             |

<Note>
  Annual billing is available at a discount on paid plans. See the [pricing page](https://nativelyai.com/builder#pricing) for current rates.
</Note>

## How credits work

* **One shared pool** — All workspace members draw from the same credit balance
* **Reserved per chat turn** — When you send a message, credits are reserved while the AI responds, then settled based on actual usage
* **Model-dependent cost** — Premium models consume more credits than standard models
* **Monthly refresh** — Paid plan credits reset each billing cycle; unused credits do not roll over

### What uses credits

* Chat messages with AI agents
* Code generation and refactoring
* Prompt enhancement
* Other AI-powered features in the builder

### What does not use credits

* Browsing your project and previewing locally
* Publishing (deploying) your app
* Managing workspace settings and members

## Free credits (Free plan)

Every workspace on the **Free plan** includes a **one-time credit allowance** so you can try Builder before upgrading. This is separate from monthly credits on paid plans — it **does not renew** each billing cycle.

### Who gets them

Free credits are included for:

* **Workspaces on the Free plan** — when you sign up or create a workspace without a paid subscription
* **Your whole workspace** — all members share the same balance, the same as on paid plans

If you upgrade, your workspace moves to that plan's monthly credits instead. If you return to Free later, any **unused** portion of your original allowance may still be available — but free credits are **never topped up again**.

### Where your balance appears

Your credit balance is always visible in the app:

* **Top right of the screen** — on every page, including the project dashboard and chat
* **Sidebar** — credits card with your current balance and **Manage plan**
* **Settings → Billing** — full balance and plan details

On a **brand-new Free workspace**, the balance may show **zero until you send your first AI message**. That's normal — your allowance **activates when you first use AI features**, then the top-right balance, sidebar, and billing page all update to show your remaining credits.

### When they're used

Credits are consumed when **agents run**:

* Chat messages with AI agents
* Code generation and refactoring
* Prompt enhancement
* Other AI-powered features in the builder

Your **first message** both **starts** your free allowance and **begins using it**. After that, every AI turn reduces your balance until it reaches zero.

Publishing, browsing your project, and managing workspace settings do **not** use credits.

### How much you get

|               | Free plan                              |
| ------------- | -------------------------------------- |
| **Allowance** | **50 credits**, one-time               |
| **Renews?**   | No                                     |
| **Shared?**   | Yes — one pool for the whole workspace |

Paid plans include fresh credits every billing cycle. Free credits do not stack with monthly plan credits — upgrading replaces Free-tier access with your plan's benefits.

### Model limits on Free

Free credits work with **standard models** on the Free plan — the default options in the model picker for everyday building.

* **Premium models** are **not available** while you're on the free allowance
* Each message costs credits based on the model and how much the agent generates
* If you select a model your plan doesn't include, Builder will ask you to upgrade or switch to a standard model

<Note>
  Premium models unlock on paid plans according to your tier. See the plan comparison below.
</Note>

### Rate limits on Free

Free workspaces also have **chat rate limits** per workspace. These apply in addition to your credit balance and help keep trial usage fair for everyone.

| Limit                      | Free plan |
| -------------------------- | --------- |
| **Chat messages per hour** | 80        |
| **Chat messages per day**  | 400       |

* Limits apply to **AI chat requests** on the Free plan — each message you send counts toward both caps
* Limits are **per workspace**, shared across all members in that workspace
* If you hit a limit, wait for the window to reset (hourly or daily) or **upgrade to a paid plan** for uninterrupted access
* **Paid plans are not subject to these Free-tier rate limits**

### When free credits run out

When your balance hits **zero** (shown in the top-right balance, sidebar, and billing settings):

* AI chat and generation pause until you have credits again
* You can **upgrade to a paid plan** for monthly credits, more projects, premium models, and higher limits
* Free credits **do not reset** — there is no monthly refill on the Free plan

Builder shows a clear message when you're out of credits.

## Feature highlights by plan

### Build & create

| Feature   | Free     | Builder  | Pro                | Business    | Scale          |
| --------- | -------- | -------- | ------------------ | ----------- | -------------- |
| Projects  | 1        | 3        | Unlimited          | Unlimited   | Unlimited      |
| AI models | Standard | Standard | Standard + Premium | All models  | All + priority |
| Templates | Basic    | General  | General            | Pro library | Pro library    |

### Deploy & ship

| Feature        | Free | Builder | Pro       | Business  | Scale     |
| -------------- | ---- | ------- | --------- | --------- | --------- |
| Custom domains | —    | 1       | Unlimited | Unlimited | Unlimited |
| Staged deploys | —    | —       | —         | Yes       | Yes       |
| Version revert | —    | Basic   | Full      | Full      | Full      |

### Collaborate

| Feature            | Free | Builder | Pro | Business  | Scale     |
| ------------------ | ---- | ------- | --- | --------- | --------- |
| Workspace members  | 2    | 3       | 6   | Unlimited | Unlimited |
| Shared credit pool | Yes  | Yes     | Yes | Yes       | Yes       |

## Redeem a promo code

Have a promo code? Apply it from the plans modal in the app. Watch the walkthrough, then follow the steps below.

<div style={{ position: "relative", paddingTop: "57.692307692307686%" }}>
  <iframe
    src="https://customer-6158v2ccd1jgc68w.cloudflarestream.com/4ff849842fe51e6f3ce7a6211b63216e/iframe?poster=https%3A%2F%2Fcustomer-6158v2ccd1jgc68w.cloudflarestream.com%2F4ff849842fe51e6f3ce7a6211b63216e%2Fthumbnails%2Fthumbnail.jpg%3Ftime%3D%26height%3D600"
    loading="lazy"
    title="How to redeem a promo code in native.builder"
    style={{
  border: "none",
  position: "absolute",
  top: 0,
  left: 0,
  height: "100%",
  width: "100%",
}}
    allow="accelerometer; gyroscope; autoplay; encrypted-media; picture-in-picture;"
    allowFullScreen
  />
</div>

<Steps>
  <Step title="Open Plans and Credits">
    From the left menu, open **Plans and Credits**.

    <Frame>
      <img src="https://mintcdn.com/naitvelyai/x8NaDxfPo3HKrb6J/images/promo-code/01-plans-and-credits-menu.png?fit=max&auto=format&n=x8NaDxfPo3HKrb6J&q=85&s=616706d883e0cc5f0c70bfc4f4b334bd" alt="Home screen with the Plans and Credits menu item highlighted" width="1024" height="524" data-path="images/promo-code/01-plans-and-credits-menu.png" />
    </Frame>
  </Step>

  <Step title="Click Change plan">
    In the **Billing** panel, under your current plan, click **Change plan**.

    <Frame>
      <img src="https://mintcdn.com/naitvelyai/x8NaDxfPo3HKrb6J/images/promo-code/02-billing-change-plan.png?fit=max&auto=format&n=x8NaDxfPo3HKrb6J&q=85&s=ce9663c8641c3378e59074698f62d347" alt="Billing panel showing the Free plan and Change plan button" width="1024" height="527" data-path="images/promo-code/02-billing-change-plan.png" />
    </Frame>
  </Step>

  <Step title="Open the promo code field">
    The **Choose a plan** modal opens. At the bottom, click **Have a promo code?**

    <Frame>
      <img src="https://mintcdn.com/naitvelyai/x8NaDxfPo3HKrb6J/images/promo-code/03-choose-a-plan-modal.png?fit=max&auto=format&n=x8NaDxfPo3HKrb6J&q=85&s=7d5d0d0232906ec53f08555885d59ea2" alt="Choose a plan modal with Have a promo code link at the bottom" width="1024" height="530" data-path="images/promo-code/03-choose-a-plan-modal.png" />
    </Frame>
  </Step>

  <Step title="Enter the code and Apply">
    Type your promo code in the input, then click **Apply**.

    <Frame>
      <img src="https://mintcdn.com/naitvelyai/x8NaDxfPo3HKrb6J/images/promo-code/04-apply-promo-code.png?fit=max&auto=format&n=x8NaDxfPo3HKrb6J&q=85&s=f34298829bb55b72ac388d632df7bc72" alt="Promo code entered in the Choose a plan modal with Apply button" width="1024" height="531" data-path="images/promo-code/04-apply-promo-code.png" />
    </Frame>
  </Step>
</Steps>

<Warning>
  Clicking **Apply** redeems the code immediately. Some codes have a **workspace redemption limit** — you can only redeem them a set number of times per workspace. If you apply a code and leave without finishing checkout or completing the offer, that redemption may already count against the limit, and the same code might not work again for that workspace.
</Warning>

## Manage billing

<Steps>
  <Step title="Open billing settings">
    In the app, open **Settings → Billing** (or go to [builder.nativelyai.com/?settings=billing](https://builder.nativelyai.com/?settings=billing) and click a plan).
  </Step>

  <Step title="Choose a plan">
    Select the plan that fits your usage. You'll be redirected to Stripe checkout for paid plans.
  </Step>

  <Step title="View your balance">
    Your current credit balance is visible in the top-right corner, the sidebar, and **Settings → Billing**.
  </Step>
</Steps>

## Running out of credits

When your workspace credit balance is depleted:

* AI chat and generation are paused until credits are available
* You can upgrade your plan or wait for your next billing cycle
* On the Free plan, see [Free credits](#free-credits-free-plan) for one-time allowance, model limits, and rate limits

<Warning>
  If a payment fails, your workspace enters a grace period. After several days, paid-plan features may be restricted until payment is resolved.
</Warning>

## Enterprise

For organizations running an **enterprise AI factory** — SSO/SAML, custom SLAs, dedicated infrastructure, and white-glove onboarding — contact [sales@nativelyai.app](mailto:sales@nativelyai.app).

Enterprise plans support **governed AI app builder** workflows at scale: unlimited members, staged deploys, and infrastructure aligned to your compliance needs.

## Next steps

<CardGroup cols={2}>
  <Card title="AI software factory" icon="factory" href="/introduction/ai-software-factory">
    Enterprise, agencies, and model-agnostic design.
  </Card>

  <Card title="FAQ" icon="circle-help" href="/introduction/faq">
    Common billing and account questions.
  </Card>

  <Card title="Pricing page" icon="external-link" href="https://nativelyai.com/builder#pricing">
    Full feature comparison with live pricing.
  </Card>

  <Card title="Referral program" icon="gift" href="/features/referral-program">
    Earn extra credits by inviting friends to native.builder.
  </Card>
</CardGroup>
