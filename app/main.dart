#!dart

import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';

final dio = Dio();

Future main(List<String> arguments) async {
  print("RUN DART APP! with $arguments");
  await Future.delayed(Duration(milliseconds: 400));
  print("requesting events");
  var result = await dio.get('https://deto-events.com/v1/events');
  print('- events result:\n\n${result.data}');

  var dataString = jsonEncode(result.data);
  Platform.environment

  exit(0);
}
