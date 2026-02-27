#!/bin/bash
cd /tmp/kavia/workspace/code-generation/e-commerce-platform-1598-1612/ecommerce_frontend
npm run lint
ESLINT_EXIT_CODE=$?
npm run build
BUILD_EXIT_CODE=$?
if [ $ESLINT_EXIT_CODE -ne 0 ] || [ $BUILD_EXIT_CODE -ne 0 ]; then
   exit 1
fi

