import 'package:e_com_flutter_app/api/api_repo.dart';
import 'package:stacked/stacked.dart';

class ProductViewModel extends BaseViewModel {
  ApiRepo api = ApiRepo.instance;
  var product = "";
  ProductViewModel() {
    loadItems();
  }

  // Add ViewModel specific code here
  Future<void> loadItems() async {
    setBusy(true);
    //Write your models loading codes here
    product = (await api.products()).toString();
    //Let other views to render again
    setBusy(false);
    notifyListeners();
  }
}
