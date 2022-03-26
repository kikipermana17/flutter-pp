import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/instance_manager.dart';

import '../controllers/biro_controller.dart';

class BookScreen extends StatelessWidget {
  const BookScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final BiroController birocontroller = Get.put(BiroController());
    var size, height, width;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          "Data Biro",
          style: TextStyle(color: Colors.white),
        )),
        backgroundColor: Colors.black,
      ),
      body: Obx(
        () => birocontroller.isLoading()
            ? Center(child: const CircularProgressIndicator())
            : Center(
                child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: birocontroller.biroList.length,
                itemBuilder: (content, index) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/img/bg.jpg"),
                                fit: BoxFit.cover)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                                margin: EdgeInsets.all(15),
                                child: DataTable(
                                  columns: [
                                    DataColumn(label: Text("Kode")),
                                    DataColumn(label: Text("Judul")),
                                    DataColumn(label: Text("Nama Kategori")),
                                    DataColumn(label: Text("Nama Pengarang")),
                                    DataColumn(label: Text("Nama Penerbit")),
                                    DataColumn(label: Text("Deskripsi")),
                                    DataColumn(label: Text("Stock")),
                                    DataColumn(label: Text("harga")),
                                    DataColumn(label: Text("cover")),
                                  ],
                                  rows: [
                                    DataRow(
                                      cells: [
                                        DataCell(Text(birocontroller
                                            .biroList[index].nama
                                            .toString())),
                                        DataCell(Text(birocontroller
                                            .biroList[index].alamat
                                            .toString())),
                                        DataCell(Text(birocontroller
                                            .biroList[index].telpon
                                            .toString())),
                                      ],
                                    ),
                                  ],
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.white,
                                  ),
                                ))
                          ],
                        ),
                      ),
                    ],
                  );
                },
              )),
      ),
    );
  }
}
