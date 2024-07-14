#!/bin/bash

# Dowload file
curl -O https://swcdn.apple.com/content/downloads/14/48/052-59890-A_I0F5YGAY0Y/p9n40hio7892gou31o1v031ng6fnm9sb3c/CLTools_macOSNMOS_SDK.pkg

# Unpack file
pkgutil --expand-full CLTools_macOSNMOS_SDK.pkg extracted

# Create tar of the Payload folder
cd extracted
tar -zcf Payload.tar.gz Payload
mv Payload.tar.gz ../
cd ..
