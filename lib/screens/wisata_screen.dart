import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/instance_manager.dart';

import '../controllers/wisata_controller.dart';

class WisataScreen extends StatelessWidget {
  const WisataScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final WisataController wisatacontroller = Get.put(WisataController());
    var size, height, width;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          "Data Wisata",
          style: TextStyle(color: Colors.white),
        )),
        backgroundColor: Colors.blueAccent,
      ),
      body: Obx(
        () => wisatacontroller.isLoading()
            ? Center(child: const CircularProgressIndicator())
            : Center(
                child: ListView.builder(
                itemCount: wisatacontroller.wisataList.length,
                itemBuilder: (content, index) {
                  return SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          margin: EdgeInsets.all(10),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                    margin: EdgeInsets.all(15),
                                    child: DataTable(
                                      columns: [
                                        DataColumn(label: Text("Kategori")),
                                        DataColumn(label: Text("Nama Wisata")),
                                        DataColumn(label: Text("Alamat")),
                                        DataColumn(label: Text("Deskripsi")),
                                        DataColumn(label: Text("Tiket")),
                                        DataColumn(label: Text("Fasilitas")),
                                        DataColumn(label: Text("Biro")),
                                        DataColumn(label: Text("Cover")),
                                      ],
                                      rows: [
                                        DataRow(
                                          cells: [
                                            DataCell(Text(wisatacontroller
                                                .wisataList[index].kategoriId
                                                .toString())),
                                            DataCell(Text(wisatacontroller
                                                .wisataList[index].namaWisata
                                                .toString())),
                                            DataCell(Text(wisatacontroller
                                                .wisataList[index].alamat
                                                .toString())),
                                            DataCell(Text(wisatacontroller
                                                .wisataList[index].deskripsi
                                                .toString())),
                                            DataCell(Text(wisatacontroller
                                                .wisataList[index].tiket
                                                .toString())),
                                            DataCell(Text(wisatacontroller
                                                .wisataList[index].fasilitas
                                                .toString())),
                                            DataCell(Text(wisatacontroller
                                                .wisataList[index].biroId
                                                .toString())),
                                            DataCell(Text(wisatacontroller
                                                .wisataList[index].cover
                                                .toString())),
                                          ],
                                        ),
                                      ],
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Colors.white,
                                      ),
                                    )),
                              ]),
                        ),
                      ],
                    ),
                  );
                },
              )),
      ),
    );
  }
}
