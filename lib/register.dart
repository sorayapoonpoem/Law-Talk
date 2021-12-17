import 'package:flutter/material.dart';
import 'package:start/login.dart';
import 'package:start/viewer/viewerhome.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(Register());
}

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // Define the default brightness and colors.
        brightness: Brightness.light,
        // scaffoldBackgroundColor: Colors.black54,
        primaryColor: Colors.purpleAccent,
        // Define the default font family.
        fontFamily: 'Indie Flower',

        // Define the default TextTheme
        textTheme: TextTheme(
          bodyText2: TextStyle(fontSize: 15, color: Colors.red[300]),
          subtitle1: TextStyle(fontSize: 15, ),
          button:
              TextStyle(fontFamily: 'IndieFlower', fontWeight: FontWeight.bold),
          headline5: TextStyle(
            fontSize: 20,
            color: Colors.black87,
            fontWeight: FontWeight.bold,
          ),
          headline4: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      home: ImageDemo(),
    );
  }
}

class ImageDemo extends StatefulWidget {
  @override
  State<ImageDemo> createState() => _ImageDemoState();
}

class _ImageDemoState extends State<ImageDemo> {
  get fontWeight => null;
  int gValue = 0;

  void changeRadio(int? value) {
    setState(() {
      gValue = value!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: new IconButton(
            icon: new Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => Login(),
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
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Text("ลงทะเบียน",
                        style: Theme.of(context).textTheme.headline4),
                    Text(""),

                    // Text("Email", style: Theme.of(context).textTheme.headline5),
                    // Text(""),
                    TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(),
                        labelText: 'Username',
                      ),
                    ),
                    Text(""),

                    // Text("Password",
                    //     style: Theme.of(context).textTheme.headline5),
                    // Text(""),
                    TextField(
                      
              obscureText: true,
              enableSuggestions: false,
              autocorrect: false,
              decoration: const InputDecoration(
                hintText: 'Password',
                fillColor: Colors.white,
                filled: true,
              ),
                    ),
                    Text(""),
                    Row(
                      children: [
                        Radio(
                            value: 0,
                            groupValue: gValue,
                            onChanged: changeRadio),
                        Text(
                          'ผู้มีความรู้ทางกฎหมาย',
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                        Radio(
                            value: 1,
                            groupValue: gValue,
                            onChanged: changeRadio),
                        Text('ผู้ใช้ทั่วไป',
                            style: Theme.of(context).textTheme.subtitle1),
                      ],
                    ),
                    Text(""),
                    // Text("ชื่อ นามสกุล",
                    //     style: Theme.of(context).textTheme.headline5),
                    // Text(""),
                    TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(),
                        labelText: 'ชื่อ',
                      ),
                    ),
                    Text(""),
                    TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(),
                        labelText: 'นามสกุล',
                      ),
                    ),
                    Text(""),
                    // Text("เบอร์โทร",
                    //     style: Theme.of(context).textTheme.headline5),
                    // Text(""),
                    TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(),
                        labelText: 'เบอร์โทร',
                      ),
                    ),
                    Text(""),
                    TextButton(
                      style: ElevatedButton.styleFrom(primary: Colors.red),
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
                      child: Text(
                        '   register   ',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
