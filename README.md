# CA Financial Reporter V2

## Goals
- Modern web-based reporting tool for analyzing client financial data
- Integrates with Gemini for AI-powered insights
- Simplifies report creation and distribution

## High-level Features
- Import and organize transaction data
- Generate balance sheets and income statements
- Natural language queries via Gemini
- Export reports to common formats

## Prerequisites
- **Node.js** 18 or newer (developed with Node 20)
- **pnpm** 9 or newer

## Setup
```bash
pnpm i   # install dependencies
pnpm dev # start the development server
```

## Environment Variables
Set the following values in your `.env` file:
- `VITE_GEMINI_API_KEY` – Gemini API key
- `VITE_GEMINI_ORG_ID` – your organization ID

## Roadmap
- Beta release with basic reporting
- Enhanced Gemini integration
- Additional data source connectors

See the [master specification](docs/master-specification.md) for full details.
