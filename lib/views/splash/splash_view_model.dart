import 'package:e_com_flutter_app/views/product/product_view.dart';
import 'package:get/get.dart';
import 'package:stacked/stacked.dart';

class SplashViewModel extends BaseViewModel {
  SplashViewModel() {
    loadItems();
  }

  // Add ViewModel specific code here
  Future<void> loadItems() async {
    setBusy(true);
    //Write your models loading codes here

    //Let other views to render again
    setBusy(false);
    notifyListeners();
    await Future.delayed( const Duration(seconds: 2));
    Get.offNamed(ProductView.routeName);

  }
}
