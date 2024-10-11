import 'package:dio/dio.dart';
import 'package:flutter_application_1/app/data/models/db_model.dart';

class ApiService {
  final Dio _dio = Dio();

  Future<Db?> fetchData() async {
    try {
      final response = await _dio
          .get('https://my-json-server.typicode.com/Fallid/codelab-api/db');
      if (response.statusCode == 200) {
        return Db.fromJson(response.data);
      } else {
        return null;
      }
    } catch (e) {
      print(e);
      return null;
    }
  }
}
