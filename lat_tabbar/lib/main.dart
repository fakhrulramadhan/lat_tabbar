import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
          length: 4,
          child: Scaffold(
            appBar: AppBar(
              title: Text("Latihan Tab Bar"),
              bottom: TabBar(tabs: <Widget>[
                Tab(
                  icon: Icon(Icons.home),
                  text: "Beranda",
                ),
                Tab(
                  icon: Icon(Icons.people),
                  text: "Profile",
                ),
                Tab(
                  child: Image(image: AssetImage("asset/orange.png")),
                ),
                Tab(
                  icon: Icon(Icons.help_center),
                  text: "Konsultasi",
                )
              ]),
            ),
            body: TabBarView(children: <Widget>[
              Positioned(
                child: Text("Beranda"),
                top: 30,
                right: 45,
              ),
              Center(
                child: Text("Profil"),
              ),
              Center(
                child: Text("Tab List Buah"),
              ),
              Center(
                child: Text("Layanan Konsultasi"),
              )
            ]),
          )),
    );
  }
}
