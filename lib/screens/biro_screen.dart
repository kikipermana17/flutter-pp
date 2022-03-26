import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/instance_manager.dart';

import '../controllers/biro_controller.dart';

class BiroScreen extends StatelessWidget {
  const BiroScreen({Key? key}) : super(key: key);

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
        backgroundColor: Colors.blueAccent,
      ),
      body: Obx(
        () => birocontroller.isLoading()
            ? Center(child: const CircularProgressIndicator())
            : Center(
                child: ListView.builder(
                itemCount: birocontroller.biroList.length,
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
                                        DataColumn(label: Text("Nama")),
                                        DataColumn(label: Text("Alamat")),
                                        DataColumn(label: Text("Telpon")),
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
