# Azure Retail Platform

## Project Overview

This project demonstrates how to host a simple retail product catalogue on Microsoft Azure using Terraform.

The website displays products to visitors over the internet. It uses Azure Storage static website hosting, so it does not require a web server to run application code.

## Business Scenario

A small retailer wants a simple online catalogue where customers can browse products. The business needs a solution that is affordable, easy to maintain, and repeatable to deploy.

The current project provides product browsing only. Ordering, payments, and delivery tracking are not implemented.

## Architecture

The diagram below shows how the retail catalogue is hosted on Azure.

![Azure Retail Platform Architecture](docs/azure-retail-platform-architecture.drawio.png)

## Azure Services and Design Decisions

| Service or setting | Why it was chosen |
|---|---|
| Azure Storage static website | Hosts the product catalogue without needing a web server. |
| Standard performance tier | A sensible starting point for a small website with modest traffic. |
| Locally Redundant Storage (LRS) | Keeps multiple copies of data within one physical location at a relatively low cost. It does not provide regional disaster recovery. |
| Terraform | Defines infrastructure as code so resources can be deployed consistently and changes can be reviewed. |
| HTTPS and TLS 1.2 minimum | Helps protect data travelling between visitors and the website. |

## Current Limitations

- The website displays products only; it does not support orders or payments.
- The static website endpoint is publicly accessible.
- LRS does not protect against the loss of an entire Azure region.
- Monitoring, automated deployment, and disaster recovery have not yet been implemented.