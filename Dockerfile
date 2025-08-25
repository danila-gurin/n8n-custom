FROM docker.n8n.io/n8nio/n8n:latest

USER root

# Install the package in n8n's working directory where it can be accessed
WORKDIR /usr/local/lib/node_modules/n8n
RUN npm install @google/generative-ai

# Switch back to node user
USER node

EXPOSE 5678
