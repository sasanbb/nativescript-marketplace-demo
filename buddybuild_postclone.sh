#!/usr/bin/env bash

# # Install and use node v6.3.1
# npm install -g n   # Install n globally
# n 6.3.1              # Install and use 5.6

# Install NativeScript CLI
echo "******** Install NativeScript CLI *************"
npm install -g nativescript

# NativeScript Ready
echo "******** NativeScript CLI Ready *************"
tns --version

# NativeScript Ready
echo "******** Install node modules *************"
npm install

echo "****** APP TYPE *****"
echo $APP_TYPE

if [ $APP_TYPE == "<APP_TYPE redacted>" ]; then
	echo "This is an <APP_TYPE redacted> app!"
  echo "******** Build NativeScript <APP_TYPE redacted> Project *************"
  tns build <APP_TYPE redacted>
  # Run Pod install
  echo "******** Enter platforms folder *************"
  cd platforms/<APP_TYPE redacted>

  # List files
  echo "******** List files *************"
  ls

else
	echo "**********This is an IOS app!************"
  # Prepare NativeScript Project
  echo "******** Build NativeScript iOS Project *************"
  tns build ios --release
  # npm run build-ios-bundle --snapshot -- --release

  # Run Pod install
  echo "******** Enter platforms folder *************"
  cd platforms/ios

  # Run Pod install
  echo "******** Run Pod Install *************"
  pod install

  # Run Pod install
  echo "******** List files *************"
  ls

fi