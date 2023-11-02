import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

final dio = Dio();

class Api {
  Future<List<dynamic>> get({required String url}) async {
    final response = await dio.get(url);
    if (response.statusCode == 200) {
      return response.data;
    } else {
      throw Exception(
        'there is a problem with status code ${response.statusCode}',
      );
    }
  }

  Future<dynamic> post({required String url, @required body}) async {
    final response = await dio.post(url, data: body);

    if (response.statusCode == 200) {
      return response.data;
    } else {
      throw Exception(
        'there is a problem with status code ${response.statusCode}',
      );
    }
  }

  Future<dynamic> put({required String url, @required body}) async {
    final response = await dio.post(url, data: body);

    if (response.statusCode == 200) {
      return response.data;
    } else {
      throw Exception(
        'there is a problem with status code ${response.statusCode}',
      );
    }
  }
}
