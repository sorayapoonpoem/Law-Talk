import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'detail.dart';

void main() {
  runApp(new MaterialApp(
    home: new userListViewPull(),
  ));
}

class userListViewPull extends StatefulWidget {
  const userListViewPull({Key? key}) : super(key: key);

  @override
  _userListViewPullState createState() => _userListViewPullState();
}

class _userListViewPullState extends State<userListViewPull> {
  final Head = TextEditingController();
  final Body = TextEditingController();
  String head = '', body = '';

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

  _displayDialog(BuildContext context) async {
    return showDialog(
        context: context,
        
        builder: (context) {
          return AlertDialog(
            
            content: TextField(
              controller: Body,
              textInputAction: TextInputAction.go,
              keyboardType: TextInputType.numberWithOptions(),
              decoration: InputDecoration(hintText: "โปรดระบุเนื้อหา"),
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
                      {'name': head, 'price': body},
                    );
                  });
                  //Head.clear();
                  Body.clear();
                  Navigator.of(context).pop();
                },
                
              )
            ],
          );
        });
  }

  static List<String> _fruit = [];
  void initState() {
    super.initState();
    fruit = fruit.toList();
  }

  static List fruit = [
    {
      
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
                title: Text('ผู้ใช้ทั่วไป'),
                subtitle: Text('${fruit[index]['price']} '),
                onTap: () {
                  setState(() {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TabDemo(),
                      ),
                    );
                  });
                },
                onLongPress: () => [showAlert(), fruit.removeAt(index)],            
                // leading:CircleAvatar(child: new Text('Bee')),
                // title: Text(fruit[index]['name']),
                // subtitle: Text('${fruit[index]['price']} '),
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => _displayDialog(context),
        backgroundColor: Color.fromRGBO(151, 95, 245, 1.0),
        
      ),
    );
  }
}
