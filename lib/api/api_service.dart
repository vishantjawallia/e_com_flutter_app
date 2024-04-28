import '../models/product.dart';
import 'url_path.dart';

abstract class ApiService extends UrlPath {
  /// [Get]
  // Future<void> profile();
  // Future<void> categories({int? id});
  Future<List<Product>> products({int? id});

  /// [Post]
  // Future<void> login();
  // Future<void> register();
  // Future<void> refreshToken();
}
