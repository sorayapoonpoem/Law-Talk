import 'package:flutter/material.dart';
import 'package:start/viewer/viewercard.dart';
import 'viewerhome.dart';
import 'package:google_fonts/google_fonts.dart';
void main() {
  runApp(new MaterialApp(
    home: new viewerTabDemo(),
  ));
}



class viewerTabDemo extends StatefulWidget {
  @override
  State<viewerTabDemo> createState() => _viewerTabDemoState();
}

class _viewerTabDemoState extends State<viewerTabDemo> {
   final Body = TextEditingController();
  String head = '', body = '';
  static List fruit = [
    {
      
      'price': 'แม่ค้าไม่ส่งของให้ ทำไงดีคะ',
    },
  ];

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => viwerTabDemo(),
              ),
            );
          },
        ),
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
      body: 
      Container(
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
        
        child: ListView.builder(
          itemCount: fruit.length,
          itemBuilder: (context, index) {
            return Card(
              color: Colors.cyan[40],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: ListTile(
                leading: CircleAvatar(backgroundImage:
                    NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8jPF9mY5IvfN_GiPr1UraOGBgCMXIAT3VJA&usqp=CAU'),),
                title: Text('ผู้สร้าง'),
                subtitle: Text('${fruit[index]['price']} '),
               
              ),
            );
          },
        ), 
          
             
      ),
      
        
      
      
    );
  }
}


