FROM ghcr.io/metatool-ai/metamcp:latest

# Install Python dependencies
RUN uv pip install --no-cache-dir \
    requests \
    beautifulsoup4

# Install system packages and Node.js (if not already present in base image)
RUN apt-get update && apt-get install -y \
    curl \
    git \
    && rm -rf /var/lib/apt/lists/*

# Install Bun
RUN curl -fsSL https://bun.sh/install | bash \
    && ln -s /root/.bun/bin/bun /usr/local/bin/bun

# Install Playwright and browsers (Node-based)
RUN npm install -g playwright \
    && npx playwright install --with-deps
