import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AdminContact_fix(),
    ),
  );
}

class AdminContact_fix extends StatelessWidget {
  const AdminContact_fix({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(      
      body: Container(
          constraints: BoxConstraints.expand(),
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
        
        child: Column(children: [
          Expanded(
            child: Column(
              children: [
                // Spacer(),
                //------ติดต่อแอกมินใน textbox ตามที่ design UIไว้
                // Text(
                //   'ติดต่อแอดมิน',
                //   style: TextStyle(fontSize: 40, decoration: TextDecoration.underline),
                  
                // ),
                //Text('ทุกวัน ตลอด 24 ชม.',style: TextStyle(fontSize: 20),),
                Spacer(),
                Icon(
                  Icons.mail,
                  size: 80,
                  color: Color.fromRGBO(0, 103, 206, 1.0),
                ),
                Text(
                  'LawTalk_admin@mail.com',
                  style: TextStyle(fontSize: 13),
                ),
                Spacer(),
                // Text('วันจันทร์-ศุกร์ ตลอด 24 ชม.',style: TextStyle(fontSize: 20),),
                // Spacer(),
                Icon(
                  Icons.chat,
                  size: 80,
                  color: Color.fromRGBO(0, 103, 206, 1.0),
                ),
                Text(
                  'Line ID: LawtalkContact',
                  style: TextStyle(fontSize: 13),
                ),
                // Spacer(),
                // Text('วันจันทร์-ศุกร์ เวลา 8:00 - 17:00 น.',style: TextStyle(fontSize: 20),),
                Spacer(),
                Icon(
                  Icons.phone,
                  size: 80,
                  color: Color.fromRGBO(0, 103, 206, 1.0),
                ),
                Text(
                  'Tel No. 0800000000',
                  style: TextStyle(fontSize: 13),
                ),
                Spacer(),
              ],
            ),
          )
        ],
        )
      ),
    );
  }
}