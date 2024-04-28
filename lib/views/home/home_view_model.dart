import 'dart:convert';
import 'dart:developer';

import 'package:e_com_flutter_app/api/api_repo.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {
  ApiRepo apiRepo = ApiRepo.instance;
  var products = "";
  HomeViewModel() {
    loadItems();
  }

  // Add ViewModel specific code here
  Future<void> loadItems() async {
    setBusy(true);
    final list = await apiRepo.products();
    log('list$list');
    products = list.toString();
    //Write your models loading codes here

    //Let other views to render again
    setBusy(false);
    notifyListeners();
  }
}
