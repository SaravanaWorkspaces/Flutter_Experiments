import 'dart:io';
import 'dart:async';
import 'dart:convert';

void main() async {
  String future = await _getUserInfo();
  print("Printing :" + future);
  print("Printing 1");
  await print("Printing 2");
  await print("Printing 3");
}

Future<String> _getUserInfo() async {
  String future = await get();
  return future;
}

Future<String> get() async {
  var httpClient = new HttpClient();
  var uri = new Uri.https('api.github.com', '/users/4908');
  var request = await httpClient.getUrl(uri);
  var response = await request.close();
  var responseBody = await response.transform(utf8.decoder).join();
  print("Response Body: " + responseBody);
  return responseBody;
}