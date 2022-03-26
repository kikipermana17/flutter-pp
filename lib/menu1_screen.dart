import 'package:flutter/material.dart';
import 'package:home/views/kategori.dart';
import 'package:home/views/wisata.dart';
import 'package:home/screens/biro_screen.dart';
import 'package:home/screens/kategori_screen.dart';
import 'package:home/screens/wisata_screen.dart';

class MenuScreen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Halaman Utama'),
        ),
        body: GridView.count(
          padding: const EdgeInsets.all(25),
          crossAxisCount: 2,
          children: <Widget>[
            Card(
              margin: const EdgeInsets.all(9),
              child: InkWell(
                onTap: () {
                  Navigator.of(context, rootNavigator: false).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) => WisataScreen(),
                    ),
                  );
                },
                splashColor: Colors.blue,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const <Widget>[
                      Icon(
                        Icons.place_outlined,
                        size: 70,
                        color: Color.fromARGB(255, 57, 136, 135),
                      ),
                      Text("Wisata", style: TextStyle(fontSize: 17.0)),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: const EdgeInsets.all(9),
              child: InkWell(
                onTap: () {
                  Navigator.of(context, rootNavigator: false).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) => KategoriScreen(),
                    ),
                  );
                },
                splashColor: Colors.blue,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const <Widget>[
                      Icon(
                        Icons.insert_invitation_outlined,
                        size: 70,
                        color: Color.fromARGB(255, 57, 136, 135),
                      ),
                      Text("Kategori", style: TextStyle(fontSize: 17.0)),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: const EdgeInsets.all(9),
              child: InkWell(
                onTap: () {
                  Navigator.of(context, rootNavigator: false).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) => BiroScreen(),
                    ),
                  );
                },
                splashColor: Colors.blue,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const <Widget>[
                      Icon(
                        Icons.car_repair,
                        size: 70,
                        color: Color.fromARGB(255, 57, 136, 135),
                      ),
                      Text("Biro", style: TextStyle(fontSize: 17.0)),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
