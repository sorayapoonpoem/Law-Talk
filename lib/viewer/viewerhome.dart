import 'package:flutter/material.dart';
import '../viewer/viewercard.dart';
import '../login.dart';
import 'package:start/contact.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(new MaterialApp(
    home: new viwerTabDemo(),
  ));
}

class viwerTabDemo extends StatefulWidget {
  @override
  State<viwerTabDemo> createState() => _viwerTabDemoState();
}

class _viwerTabDemoState extends State<viwerTabDemo> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Color.fromRGBO(181, 223, 247, 1.0),
                Color.fromRGBO(108, 108, 255, 1.0)
              ]),
            ),
          ),
          centerTitle: true,
          title: Text('Law talk',
              style: GoogleFonts.indieFlower(
                fontSize: 34,
                fontWeight: FontWeight.bold,
              )),
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromRGBO(108, 108, 255, 1.0),
              Color.fromRGBO(181, 223, 247, 1.0),
            ]),
          ),
          child: TabBar(
            labelColor: Color.fromRGBO(255, 255, 255, 1.0),
            unselectedLabelColor: Color.fromRGBO(105, 105, 105, 1.0),
            tabs: [
              Tab(
                icon: Icon(Icons.home),
                text: 'หน้าหลัก',
              ),
              Tab(
                icon: Icon(Icons.contacts),
                text: 'ติดต่อแอดมิน',
              ),
              Tab(
                icon: Icon(Icons.person),
                text: 'ฉัน',
              ),
            ],
          ),
        ),
        body: TabBarView(children: [
          Container(
            child: const ListViewPull(),
          ),
          Container(
            child: const AdminContact_fix(),
          ),
          Container(
            child: const Login(),
          ),
        ]),
      ),
    );
  }
}
