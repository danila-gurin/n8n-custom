FROM docker.n8n.io/n8nio/n8n:latest

USER root
RUN npm install -g @google/generative-ai
USER node

ENV NODE_FUNCTION_ALLOW_EXTERNAL=@google/generative-ai
