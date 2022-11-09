#!/bin/sh
APP_DIR="$(dirname -- "$0")"
dart pub get
dart run "$APP_DIR/main.dart"