# Microsoft's official Playwright image already has Chromium + every system
# library it needs (fonts, libnss, libatk, ...) — no manual apt steps.
FROM mcr.microsoft.com/playwright:v1.48.0-jammy

WORKDIR /app

COPY package.json ./
RUN npm install --omit=dev

COPY server.js ./
COPY templates ./templates

ENV PORT=3500
EXPOSE 3500

CMD ["node", "server.js"]
