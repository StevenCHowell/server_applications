#!/bin/bash

# Define the output file
ENV_FILE=".env"

# Generate the random secret key
SECRET_KEY=$(openssl rand -base64 32)

# Write the environment variables to the file
{
  echo "POSTGRES_USER=appuser"
  echo "POSTGRES_PASSWORD=${SECRET_KEY}"
  echo "POSTGRES_DB=immich_db"
} > "$ENV_FILE"

# Inform the user
echo "Environment variables have been written to $ENV_FILE"
