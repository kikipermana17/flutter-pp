import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:home/services/biro_service.dart';

import '../models/biro_model.dart';

class BiroController extends GetxController {
  var biroList = RxList<Data>();
  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    fetchBiroData();
  }

  void fetchBiroData() async {
    try {
      isLoading(true);
      var biro = await BiroService.fetchBiroData();
      biroList.value = biro.data as List<Data>;
      update();
    } finally {
      isLoading(false);
    }
  }
}
