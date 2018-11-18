#!/bin/bash

version=2.6.x

url=$(curl -sL https://github.com/electron/electron/releases/latest | grep -e ".*href.*electron-.*darwin-x64.zip.*" | cut -d "=" -f 2 | cut -d " " -f 1 | tr -d \")

wget -O electron-darwin.zip https://github.com/$url

unzip -d electron-darwin electron-darwin.zip

plutil -replace CFBundleDisplayName -string Leanote electron-darwin/Electron.app/Contents/Info.plist
plutil -replace CFBundleIdentifier -string Leanote electron-darwin/Electron.app/Contents/Info.plist
plutil -replace CFBundleName -string Leanote electron-darwin/Electron.app/Contents/Info.plist

plutil -replace CFBundleShortVersionString -string $version electron-darwin/Electron.app/Contents/Info.plist
plutil -replace CFBundleVersion -string $version electron-darwin/Electron.app/Contents/Info.plist

cp electron.icns electron-darwin/Electron.app/Contents/Resources

mkdir electron-darwin/Electron.app/Contents/Resources/app

cp -R ../public/ electron-darwin/Electron.app/Contents/Resources/app
cp -R ../node_modules/ electron-darwin/Electron.app/Contents/Resources/app
cp -R ../data/ electron-darwin/Electron.app/Contents/Resources/app
cp ../login.html electron-darwin/Electron.app/Contents/Resources/app
cp ../note.html electron-darwin/Electron.app/Contents/Resources/app
cp ../main.js electron-darwin/Electron.app/Contents/Resources/app
cp package.json electron-darwin/Electron.app/Contents/Resources/app