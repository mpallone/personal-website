#!/bin/bash

echo "Building distribution..."
ember build —environment=production
echo "done."
echo ""
echo "Copying files to markpall.one..."
scp -r -P 2222 dist/* markcpallone47293@markpall.one:/
echo "Done."

sleep 5s # Give server time to breath
open http://www.markpall.one

