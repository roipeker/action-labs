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
  var sendData = {
    'events': result.data,
    'env': Platform.environment,
  };
  var jsonString = jsonEncode(sendData);
  File('dart.txt').saves
  exit(0);
}
