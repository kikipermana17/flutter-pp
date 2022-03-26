import 'package:flutter/material.dart';
import 'package:home/menu1_screen.dart';
import 'package:home/menu2_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Penentuan Wisata')),
        backgroundColor: Colors.blue.shade800,
      ),
      body: Container(
        color: Colors.white,
        alignment: Alignment.center,
        child: ListView(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/img/wst.png"), fit: BoxFit.cover),
              ),
              height: 230,
              width: 180,
              margin: EdgeInsets.all(18),
            ),
          ],
        ),
      ),
    );
  }
}
