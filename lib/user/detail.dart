import 'package:flutter/material.dart';
import 'package:start/user/home.dart';
import 'package:google_fonts/google_fonts.dart';
void main() {
  runApp(new MaterialApp(
    home: new TabDemo(),
  ));
}



class TabDemo extends StatefulWidget {
  @override
  State<TabDemo> createState() => _TabDemoState();
}

class _TabDemoState extends State<TabDemo> {
   final Body = TextEditingController();
  String head = '', body = '';
  static List fruit = [
    {
      
      'price': 'แม่ค้าไม่ส่งของให้ ทำไงดีคะ',
    },
  ];

  _displayDialog(BuildContext context) async {
    return showDialog(
        context: context,
        
        builder: (context) {
          return AlertDialog(
            
            content: TextField(
              controller: Body,
              textInputAction: TextInputAction.go,
              keyboardType: TextInputType.numberWithOptions(),
              decoration: InputDecoration(hintText: "โปรดแสดงความคิดเห็นอย่างสุภาพ"),
              onChanged: (String value) {
                setState(() {
                  body = value;
                });
              },
            ),
            actions: <Widget>[
              new FlatButton(
                child: new Text('Submit'),
                color: Color.fromRGBO(194, 170, 255, 1.0),
                onPressed: () {
                  setState(() {
                    fruit.add(
                      { 'price': body},
                    );
                  });
                  
                  Body.clear();
                  Navigator.of(context).pop();
                },
                
              )
            ],
          );
        });
  }

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
                builder: (context) => userTabDemo(),
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
       floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.border_color_rounded),
        onPressed: () => _displayDialog(context),
        backgroundColor: Color.fromRGBO(151, 95, 245, 1.0),
        
      ),
      
    );
  }
}


