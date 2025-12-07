FROM metamcp:latest

# Install Python dependencies
RUN pip install --no-cache-dir \
    requests \
    beautifulsoup4

# Install system packages and Node.js (if not already present in base image)
RUN apt-get update && apt-get install -y \
    curl \
    git \
    ca-certificates \
    wget \
    && rm -rf /var/lib/apt/lists/*

# Install Bun
RUN curl -fsSL https://bun.sh/install | bash \
    && ln -s /root/.bun/bin/bun /usr/local/bin/bun

# Install Playwright and browsers (Node-based)
RUN npm install -g playwright \
    && npx playwright install --with-deps

# Example: install a global MCP package (placeholder, replace with real MCP server package)
RUN npm install -g some-mcp-package

WORKDIR /app

CMD ["bash"]
