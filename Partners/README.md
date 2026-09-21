> ## Documentation Index
> Fetch the complete documentation index at: https://docs-builder.nativelyai.com/llms.txt
> Use this file to discover all available pages before exploring further.

# Building with Bright Data

> Use Bright Data in native.builder — ask the Builder agent to pull public web data with proxies, scrapers, and datasets.

[Bright Data](https://brightdata.com) is a web data partner for **native.builder**. Their platform helps apps collect public web data at scale — proxies, scraping APIs, search results, and ready-made datasets — so you can focus on the product instead of fighting blocks and CAPTCHAs.

## What Bright Data is

Bright Data is an end-to-end **web data platform**:

* **Proxy network** — Access sites through a large pool of residential, mobile, ISP, and datacenter IPs
* **Web access APIs** — Unlock pages, run SERP queries, crawl sites, and drive remote browsers without managing anti-bot plumbing yourself
* **Scraper APIs and datasets** — Pre-built scrapers and structured datasets for common domains when you need results fast
* **AI-ready pipelines** — Turn public web content into structured data your app or agents can use

Typical Builder builds: market research tools, price monitors, lead enrichment, SEO dashboards, and AI apps that need fresh public web context.

<div style={{ position: "relative", paddingTop: "57.56929637526652%" }}>
  <iframe
    src="https://customer-6158v2ccd1jgc68w.cloudflarestream.com/0fc8ebf01b56036be4ef5dc15c02d5b7/iframe?poster=https%3A%2F%2Fcustomer-6158v2ccd1jgc68w.cloudflarestream.com%2F0fc8ebf01b56036be4ef5dc15c02d5b7%2Fthumbnails%2Fthumbnail.jpg%3Ftime%3D%26height%3D600"
    loading="lazy"
    title="Building with Bright Data"
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

## Build with Bright Data in Builder

You don’t need a special Bright Data mode in Builder. Describe the data you need, and ask the **Builder agent** to use Bright Data.

Examples you can paste into chat:

* “Use **Bright Data** to scrape product prices from this site and show them in a table”
* “Build a SERP tracker with the **Bright Data** SERP API”
* “Pull public company data via **Bright Data** and store it in Supabase”

Provide your Bright Data credentials when the agent asks (or store them as secrets). Builder wires the API calls, parsing, and UI from your prompt.

<Tip>
  Be explicit: say **“use Bright Data”** in the brief so the agent picks that partner for web data instead of ad-hoc scraping.
</Tip>

## Learn more

* [Bright Data](https://brightdata.com)
* [Bright Data docs](https://docs.brightdata.com)
