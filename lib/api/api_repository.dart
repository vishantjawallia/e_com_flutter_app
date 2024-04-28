import "package:dio/dio.dart";
import "../helper/helper.dart";

Dio dio = Dio();

class ApiRepository {
  static Future<Response?> get(
    String url, {
    String? token,
  }) async {
    try {
      final response = await dio.get(url);
      if (response.statusCode == 200) {
        return response;
      } else {
        throw Exception("Status Code: ${response.statusCode} and Expection Occured: ${response.data}");
      }
    } catch (e, stackTrace) {
      Helper.printFunctionName(stackTrace, e);
    }
    return null;
  }
}
