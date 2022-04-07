import 'package:get/get.dart';

import '../providers/list_provider.dart';

class ListingController extends GetxController with StateMixin {
  //TODO: Implement ListingController

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }
  void coin_list(){
    ListProvider().coin_List().then((resp){
      Get.log("Success");
      print(ListProvider().coin_List());
      change(resp, status: RxStatus.success());
    }, onError: (err){
      change(null, status: RxStatus.error());
      Get.log("Fail");
    }
    );
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
