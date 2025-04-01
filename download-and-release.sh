#!/bin/bash

# Dowload file
curl -O https://swcdn.apple.com/content/downloads/36/33/072-44426-A_G1AII30AST/ddbss9h6gse6a32rg6luosbrm6vgniu033/CLTools_macOSNMOS_SDK.pkg

# Unpack file
pkgutil --expand-full CLTools_macOSNMOS_SDK.pkg extracted

# Create tar of the Payload folder
cd extracted
tar -zcf Payload.tar.gz Payload
mv Payload.tar.gz ../
cd ..
