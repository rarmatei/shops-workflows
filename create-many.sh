#!/bin/bash
      if test -f "$PACKAGE_LOCK_FILEPATH"; then
          echo "Using npm"
          npm ci
          exit
      fi
      if test -f "$YARN_LOCK_FILEPATH"; then
          echo "Using yarn"
          yarn install --frozen-lockfile
          exit
      fi
      echo "Failed to detect package manager"
      exit 1
