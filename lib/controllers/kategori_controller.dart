import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:home/services/kategori_service.dart';

import '../models/kategori_model.dart';

class KategoriController extends GetxController {
  var kategoriList = RxList<Data>();
  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    fetchKategoriData();
  }

  void fetchKategoriData() async {
    try {
      isLoading(true);
      var kategori = await KategoriService.fetchKategoriData();
      kategoriList.value = kategori.data as List<Data>;
      update();
    } finally {
      isLoading(false);
    }
  }
}
