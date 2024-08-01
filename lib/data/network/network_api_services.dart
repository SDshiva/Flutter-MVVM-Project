// ignore_for_file: prefer_const_constructors

import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:getx_mvvm/data/app_exceptions.dart';
import 'package:getx_mvvm/data/network/base_api_services.dart';
import 'package:http/http.dart';

class NetworkApiServices extends BaseApiServices {
  @override
  Future<dynamic> getApi(String url) async {
    if (kDebugMode) {
      print(url);
    }
    dynamic jsonResponse;
    try {
      final response = await get(Uri.parse(url)).timeout(Duration(seconds: 10));
      jsonResponse = returnResponse(response);
    } on SocketException {
      throw InternetException('');
    } on RequesTimeOut {
      throw RequesTimeOut('');
    }
    return jsonResponse;
  }

  @override
  Future<dynamic> postApi(dynamic data, String url) async {
    if (kDebugMode) {
      print(url);
      print(data);
    }
    dynamic jsonResponse;
    try {
      final response = await post(Uri.parse(url), body: jsonEncode(data))
          .timeout(Duration(seconds: 10));
      jsonResponse = returnResponse(response);
    } on SocketException {
      throw InternetException('');
    } on RequesTimeOut {
      throw RequesTimeOut('');
    }
    return jsonResponse;
  }

  dynamic returnResponse(Response response) {
    switch (response.statusCode) {
      case 200:
        return jsonDecode(response.body);
      case 400:
        throw InvalidUrlException('');
      default:
        throw FetchDataException(
            'Error occurs while communicating with server!');
    }
  }
}
