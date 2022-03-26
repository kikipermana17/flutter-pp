import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:home/services/wisata_service.dart';

import '../models/wisata_model.dart';

class WisataController extends GetxController {
  var wisataList = RxList<Data>();
  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    fetchWisataData();
  }

  void fetchWisataData() async {
    try {
      isLoading(true);
      var wisata = await WisataService.fetchWisataData();
      wisataList.value = wisata.data as List<Data>;
      update();
    } finally {
      isLoading(false);
    }
  }
}
