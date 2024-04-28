import 'dart:convert';
import 'dart:developer';

import 'package:e_com_flutter_app/models/product.dart';

import '../helper/helper.dart';
import 'api_service.dart';
import 'api_repository.dart';
import 'url_path.dart';

class ApiRepo implements ApiService {
  ApiRepo._();
  static ApiRepo get instance => ApiRepo._();

  @override
  Future<List<Product>> products({int? id}) async {
    List<Product> value = [];
    try {
      final response = await ApiRepository.get(UrlPath.products);
      log(response!.data.toString());
      final data = response.data;
      value = Product.fromJsonList(data);
      return value;
    } catch (e, stackTrace) {
      Helper.printFunctionName(stackTrace, e);
    }
    return value;
  }
}
