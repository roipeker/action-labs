#!/bin/sh
APP_DIR="$(dirname -- "$0")"
echo $APP_DIR
dart pub get
dart run "$APP_DIR/main.dart"