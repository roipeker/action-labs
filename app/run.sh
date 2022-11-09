#!/bin/sh
APP_DIR="$(dirname -- "$0")"
echo $APP_DIR
dart pub get -C
dart run "$APP_DIR/main.dart"