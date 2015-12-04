#!/bin/sh

git clone https://github.com/aurelia/skeleton-navigation /src
cd /src
npm install -y
jspm install -y
gulp watch