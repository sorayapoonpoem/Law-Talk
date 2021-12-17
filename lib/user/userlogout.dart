import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../register.dart';
import 'package:start/viewer/viewerhome.dart';

void main() {
  runApp(new MaterialApp(
    home: new Logout(),
  ));
}

class Logout extends StatefulWidget {
  const Logout({Key? key}) : super(key: key);

  @override
  _LogoutState createState() => _LogoutState();
}

class _LogoutState extends State<Logout> {
  bool sw = false;
  final TextEditingController Username = TextEditingController();
  final TextEditingController Password = TextEditingController();

  @override
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
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                new Container(
                margin: const EdgeInsets.only(right: 16.0),
                child: new CircleAvatar(radius: 100,
                backgroundImage:
                    NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8jPF9mY5IvfN_GiPr1UraOGBgCMXIAT3VJA&usqp=CAU'),),
              ),
              ]
              
            ),
            Text(''),
            //Text('ผู้ใช้ทั่วไป',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
           // Text(''),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => viwerTabDemo(),
                        ),
                      );
                    });
                  },
                  child: const Text(
                    'ออกจากระบบ',style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red, 
                    onPrimary: Colors.white, 
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
