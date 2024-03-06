import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:e_comm_app/models/response_model.dart';
import 'package:e_comm_app/utils/app_constansts.dart';

void fetchDate() async {
  Dio dio = Dio();
  try {
    final response = await dio.get(AppConstants.basUrl);
    var responseData = json.decode(response.data);
  } catch (e) {
    print(e);
  }
}
