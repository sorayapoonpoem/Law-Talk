
    
    
  
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:start/admin/button_widget.dart';
import 'package:start/admin/navigation_drawer_widget.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(PeoplePage());

class PeoplePage extends StatefulWidget {
  @override
  State<PeoplePage> createState() => _PeoplePageState();
}

class _PeoplePageState extends State<PeoplePage> {
  int _ddvalue = 0;
  int _ddvalue2 = 0;
  int _ddvalue3 = 0;
  

Future showAlert() async {
    String? answer = await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Warning'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('คุณแน่ใจใช่ไหมที่จะลบบทความนี้'),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop('Cancel');
                setState(() {});
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop('OK');
                setState(() {});
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    var myText = new Text('MasterUNG');
    var imageStrings = [
      'assets/images/boy.png',
      'assets/images/boy.png',
      'assets/images/boy.png'
    ];
    var nameStrings = ['Bee', 'Jack', 'Zero'];
    var myCard1 = new Card(
      color: Color.fromRGBO(255, 255, 227, 1.0),
      child: Column(
        children: <Widget>[
          Image.asset(imageStrings[0]),
          Text(nameStrings[0]),
          DropdownButton(
            value: _ddvalue,
            items: [
              DropdownMenuItem(value: 0, child: Text('Enable')),
              DropdownMenuItem(value: 2020, child: Text('Disable')),
            ],
            onChanged: (int? newvalue) {
              setState(() {

                _ddvalue = newvalue!;
              });
            },
          ),
        ],
      ),
    );

    var myCard2 = new Card(
      color: Color.fromRGBO(255, 255, 227, 1.0),
      child: Column(
        children: <Widget>[
          Image.asset(imageStrings[1]),
          Text(nameStrings[1]),
          DropdownButton(
            value: _ddvalue2,
            items: [
              DropdownMenuItem(value: 0, child: Text('Enable')),
              DropdownMenuItem(value: 2020, child: Text('Disable')),
            ],
            onChanged: (int? newvalue) {
              setState(() {
                _ddvalue2 = newvalue!;
              });
            },
          ),
        ],
      ),
    );
    var myCard3 = new Card(
      color: Color.fromRGBO(255, 255, 227, 1.0),
      child: Column(
        children: <Widget>[
          Image.asset(imageStrings[2]),
          Text(nameStrings[2]),
          DropdownButton(           
            value: _ddvalue3,
            items: [
              DropdownMenuItem(value: 0, child: Text('Enable')),
              DropdownMenuItem(value: 2020, child: Text('Disable')),
            ],
            onChanged: (int? newvalue) {
              setState(() {
                _ddvalue3 = newvalue!;
              });
            },
          ),
        ],
      ),
    );
    
    
    return MaterialApp(
      home: Scaffold(
        drawer: NavigationDrawerWidget(),
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
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment(0.0, -1.0),
                end: Alignment(0.0, 1.0),
                colors: [
                  Color.fromRGBO(143, 127, 200, 1.0),
                  Color.fromRGBO(147, 147, 209, 1.0),
                  Color.fromRGBO(171, 208, 237, 1.0),
                  Color.fromRGBO(255, 255, 255, 1.0),
                ]),
          ),
          child: Column(
            children: <Widget>[
              Text(''),
              Container(
                child: Row(
                  children: <Widget>[Text('    '), myCard1, myCard2, myCard3],
                ),
              ),
              // Container(
              //   child: Row(
              //     children: <Widget>[Text('    '), myCard4, myCard5],
              //   ),
              // ),
             
            ],
          ),
        ),
      ),
    );
  }
}

  