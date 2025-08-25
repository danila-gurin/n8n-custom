FROM docker.n8n.io/n8nio/n8n:latest

USER root

# Install in the correct location for n8n to find it
RUN cd /usr/local/lib/node_modules/n8n && npm install @google/generative-ai

USER node

# Set environment to allow external modules
ENV NODE_FUNCTION_ALLOW_EXTERNAL=@google/generative-ai

EXPOSE 5678
