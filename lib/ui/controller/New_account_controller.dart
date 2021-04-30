import 'package:aba/data/data_source/New_account_data_test.dart';
import 'package:aba/data/model/New_account_model.dart';
import 'package:get/get.dart';

class NewAccountController extends GetxController {
  var listNewAccountitemModel = <NewAccountModel>[].obs;

  @override
  void onInit() {
    loadnewaccountitemmodel();
    super.onInit();
  }

  loadnewaccountitemmodel() async {
    listNewAccountitemModel.clear();
    var list = await NewAccountDataTest.listnewaccountitem();
    listNewAccountitemModel.assignAll(list);
  }
}
