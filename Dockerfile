FROM docker.n8n.io/n8nio/n8n:latest

USER root

# Install the Google Generative AI package globally
RUN npm install -g @google/generative-ai

# Switch back to the n8n user
USER node
