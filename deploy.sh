#!/bin/bash

set -e

echo "chmodding files..."
chmod -R og+r public/assets/*
chmod -R og-w public/assets/*
echo "done."

echo "Building distribution..."
ember build —environment=production
echo "done."
echo ""
echo "Copying files to markpall.one..."
scp -r -P 2222 dist/* markcpallone47293@markpall.one:/
echo "Done."

sleep 5s # Give server time to breath
open http://www.markpall.one

