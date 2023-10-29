import 'package:flutter/material.dart';
import 'package:flutter_application_1/logout.dart';
import 'package:flutter_application_1/profil.dart';
import 'berita.dart';
import 'Teknologi.dart';

void main() {
  runApp(MaterialApp(
    home: Dashboard(),
  ));
}

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Text("Dashboard"),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            const SizedBox(height: 40),
            CircleAvatar(
              radius: 100,
              backgroundColor: Colors.lightGreen,
              backgroundImage: AssetImage('image/alvin.jpeg'),
            ),
            UserAccountsDrawerHeader(
              accountName: Text(
                "Alvin Novizar R.G",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
              ),
              accountEmail: Text("21670076"),
            ),
          ],
        ),
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(25),
        crossAxisCount: 2,
        children: <Widget>[
          buildCard(context, Icons.person, "Profil", () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Profil()));
          }),
          buildCard(context, Icons.new_releases, "berita", () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Berita()));
          }),
          buildCard(context, Icons.settings_input_antenna, "Teknologi", () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Teknologi()));
          }),
          buildCard(context, Icons.logout, "Logout", () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => LogoutPage()));
            // Tambahkan logika logout Anda di sini
          }),
        ],
      ),
    );
  }

  Card buildCard(
      BuildContext context, IconData icon, String text, Function() onTap) {
    return Card(
      margin: const EdgeInsets.all(8),
      child: InkWell(
        onTap: onTap,
        splashColor: Colors.blue,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(
                icon,
                size: 70,
                color: Colors.blueGrey,
              ),
              Text(text, style: TextStyle(fontSize: 17.0)),
            ],
          ),
        ),
      ),
    );
  }
}
