# Azure Retail Platform

## Business problem

A small retailer needs a simple online product catalogue that customers can access through a web browser.

## Requirements

- Display product names, descriptions, and prices.
- Make the website publicly accessible.
- Keep hosting costs low.
- Avoid managing servers where possible.
- Use Terraform to describe the infrastructure.
- Document the architecture and important design decisions.

## Initial architecture decision

Investigate Azure Storage static website hosting as the first hosting option.

This may suit the project because the website currently contains static HTML and CSS and does not require a database or server-side application.

## Constraints

- No Azure resources have been deployed yet.
- Cloud spending must be reviewed before deployment.
- The infrastructure should be repeatable and documented.

## Future improvements

- Configure a custom domain and HTTPS approach.
- Add automated deployment from Git.
- Review security and monitoring options.
- Compare hosting alternatives and their trade-offs.