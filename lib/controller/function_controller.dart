import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cat_api_app/model/cats_model.dart';

class FunctionController extends ChangeNotifier {
  Dio dio = Dio();
  CatsModel catsModel = CatsModel();

  Future<CatsModel> getFacts() async {
    final response = await dio.get('https://catfact.ninja/fact');
    if (response.statusCode == 200) {
      log('Sucess');
      notifyListeners();
      Map<String, dynamic> jsonData = response.data;
      catsModel = CatsModel.fromJson(jsonData);
      return catsModel;
    } else {
      throw Exception('FAILED');
    }
  }
}
