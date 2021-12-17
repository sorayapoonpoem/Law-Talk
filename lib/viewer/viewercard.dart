import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../viewer/viewerdetail.dart';
import 'package:start/login.dart';
//import 'package:start/viewer/viewerdetaildart';

void main() {
  runApp(new MaterialApp(
    home: new ListViewPull(),
  ));
}

class ListViewPull extends StatefulWidget {
  const ListViewPull({Key? key}) : super(key: key);

  @override
  _ListViewPullState createState() => _ListViewPullState();
}

class _ListViewPullState extends State<ListViewPull> {
  final Head = TextEditingController();
  final Body = TextEditingController();
  String head = '', body = '';
  

  

static List<String> _fruit = [];
void initState() {
    super.initState();    
    fruit = fruit.toList();
  }
   static List fruit = [
    {
     'name':'ผู้ใช้ทั่วไป',
      'price': 'แม่ค้าไม่ส่งของให้ ทำไงดีคะ',
    },
  ];

  
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                title: Text('${fruit[index]['name']}'),
                subtitle: Text('${fruit[index]['price']} '),
                onTap: () {
                  setState(() {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => viewerTabDemo(),
                      ),
                    );
                  });
                },
              ),
            );
          },
        ),
      ),
      
    );
  }
}

