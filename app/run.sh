#!/bin/sh
APP_DIR="$(dirname -- "$0")"
echo "App dir $APP_DIR"
dart pub get -C $APP_DIR
dart run "$APP_DIR/main.dart"