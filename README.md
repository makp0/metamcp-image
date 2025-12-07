# MetaMCP Docker Image (metamcp-image)

This repository builds a Docker image based on `metamcp:latest` with:

- Python libraries: `requests`, `beautifulsoup4`
- System tools: `curl`, `git`
- Bun runtime
- Playwright (Node) and browsers
- Example global MCP npm package (placeholder)

## Usage

### Build locally

```bash
docker build -t metamcp-image:local .
```

```bash
docker run -it --rm metamcp-image:local bash
```

### From GHCR (after first successful GitHub Actions run)

```bash
docker pull ghcr.io/${YOUR_GH_USERNAME}/metamcp-image:latest
```

Replace `${YOUR_GH_USERNAME}` with your GitHub username.
