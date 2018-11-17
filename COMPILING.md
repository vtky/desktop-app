# Compling and Publishing

## 1. Pre-reqs
```shell
$> npm install --global gulp-cli
$> cd PATH-TO-LEANOTE-DESKTOP-APP/dev
$> npm install
$> gulp
$> CRTL+C (exit gulp)
```

## 2. Download Electron Binaries

https://github.com/electron/electron/releases


## 3. Package
Copy Leanote Desktop app directory into Electron binary and rename to app/
```
electron/Electron.app/Contents/Resources/app/
├── package.json
├── main.js
└── index.html
```