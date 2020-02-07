import 'package:flutter/material.dart';
import './hal_dosen.dart' as dosen;
import './hal_mahasiswa.dart' as mahasiswa;
import './hal_Pegawai.dart' as pegawai;

void main() {
  runApp(MaterialApp(
    home: new HalamanSatu(),
  ));
}

class HalamanSatu extends StatefulWidget {
  @override
  _HalamanSatuState createState() => _HalamanSatuState();
}

class _HalamanSatuState extends State<HalamanSatu>
    with SingleTickerProviderStateMixin {
  TabController controller;
  @override
  void initState() {
    controller = new TabController(vsync: this, length: 3);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.amber,
        title: Center(child: new Text("Tab Bar Flutter")),
        bottom: new TabBar(
          controller: controller,
          tabs: <Widget>[
            new Tab(
              icon: new Icon(Icons.people),
              text: "Dosen",
            ),
            new Tab(
              icon: new Icon(Icons.person_add),
              text: "Mahasiswa",
            ),
            new Tab(
              icon: new Icon(Icons.person_outline),
              text: "Pegawai",
            )
          ],
        ),
      ),
      body: new TabBarView(
        controller: controller,
        children: <Widget>[
          new dosen.Dosen(),
          new mahasiswa.Mahasiswa(),
          new pegawai.Pegawai(),
        ],
      ),
      bottomNavigationBar: new Material(
        color: Colors.amber,
        child: new TabBar(
          controller: controller,
          tabs: <Widget>[
            new Tab(
              icon: new Icon(Icons.people),
              text: "Dosen",
            ),
            new Tab(
              icon: new Icon(Icons.person_add),
              text: "Mahasiswa",
            ),
            new Tab(
              icon: new Icon(Icons.person_outline),
              text: "Pegawai",
            )
          ],
        ),
      ),
    );
  }
}
