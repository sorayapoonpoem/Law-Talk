import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'register.dart';
import '../user/home.dart';
import 'admin/a1.dart';

void main() {
  runApp(new MaterialApp(
    home: new Login(),
  ));
}

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool sw = false;
  final TextEditingController Username = TextEditingController();
  final TextEditingController Password = TextEditingController();

  @override
  void toggleSwitch(bool? status) {
    setState(() {
      sw = status!;
    });
  }

  void showAlert(String title, String message) async {
    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(message),
        );
      },
    );
  }

  void save() async {
    String name = Username.text;
    String pass = Password.text;
    SharedPreferences prefs = await SharedPreferences.getInstance();

    if (sw == true) {
      prefs.setString('name', name);
      prefs.setString('pass', pass);
      prefs.setBool('sw', sw);
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => Wlecome(),
            settings: RouteSettings(arguments: name)),
      );
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => Wlecome(),
            settings: RouteSettings(arguments: name)),
      );
    }
  }

  void clear() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.clear();
    Username.text = '';
    Password.text = '';
    setState(() {
      sw = false;
    });
  }

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
            Text(''),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              new Container(
                margin: const EdgeInsets.only(right: 16.0),
                child: new CircleAvatar(
                  radius: 100,
                  backgroundImage: ExactAssetImage(
                    'assets/images/logo.jpg',
                  ),
                ),
              ),
            ]),
            Text(''),
            Text(''),
            TextField(
              controller: Username,
              decoration: const InputDecoration(
                fillColor: Colors.white,
                filled: true,
                hintText: 'Username',
                border: UnderlineInputBorder(),
                // labelStyle: TextStyle(
                //   color: Color.fromRGBO(255, 255, 255, 1.0),
                // ),
              ),
            ),
            Text(''),
            TextField(
              controller: Password,
              obscureText: true,
              enableSuggestions: false,
              autocorrect: false,
              decoration: const InputDecoration(
                hintText: 'Password',
                fillColor: Colors.white,
                filled: true,
              ),
            ),
            Text(''),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: OutlinedButton(
                     style: ElevatedButton.styleFrom(primary: Colors.red),
                    onPressed: () {
                      setState(() {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Register(),
                             ),
                        );
                      });
                    },
                    child: const Text(
                      'ลงทะเบียน',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Expanded(child: Text('')),
                
                Expanded(
                  child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.blue),
                  onPressed: () {
                    setState(() {
                     

                      Username.text;
                      Password.text;
                      
                        if (
                         
                            Username.text == 'Bee' &&
                            Password.text == '1111'||Username.text == 'Jack' &&
                            Password.text == '2222') {
                          clear();
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => userTabDemo(),
                               ),
                          );
                        }
                        if(
                           Username.text == 'Admin' &&
                            Password.text == '1234'
                        ){
                          clear();
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Admin(),
                               ),
                          );
                        }
                        //  else {
                        //   showAlert('Error', 'Wrong username or password');
                        // }
                      }
                      
                    );
                  },
                  child: const Text(
                    'เข้าสู่ระบบ',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Wlecome extends StatefulWidget {
  @override
  State<Wlecome> createState() => _WlecomeState();
}

class _WlecomeState extends State<Wlecome> {
  Widget logoutButton() {
    return IconButton(
      icon: Icon(Icons.logout),
      onPressed: () {
        setState(() {
          {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => Login(),
              ),
            );
          }
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    String name = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Wlecome',
        ),
        actions: <Widget>[logoutButton()],
      ),
      body: Container(
        alignment: Alignment.topCenter,
        padding: EdgeInsets.only(top: 16),
        child: Text('Welcome $name'),
      ),
    );
  }
}
