import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:start/admin/button_widget.dart';
import 'package:start/admin/navigation_drawer_widget.dart';
import '../admin/removecontent.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(Admin());
}

class Admin extends StatelessWidget {
  static final String title = 'Law';

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(primarySwatch: Colors.blue),
        home: MainPage(),
      );
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        drawer: NavigationDrawerWidget(),
        // endDrawer: NavigationDrawerWidget(),
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
          title: Text('จัดการบทความ'),
          
        ),
        body: Container(
          // child: TextField(
          // decoration: InputDecoration(
          //    hintText: 'Search',
             
          //   prefixIcon: Icon(Icons.search,),
       
              
          //   ),
          // ),
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
      child: const ListViewPull(),
        ),

      );

}

class ListViewDemo extends StatefulWidget {
  const ListViewDemo({Key? key}) : super(key: key);

  @override
  _ListViewDemoState createState() => _ListViewDemoState();
}


class _ListViewDemoState extends State<ListViewDemo> {
  final List fruit = [
    {'name': 'นาย อ'},
    {'name': 'นาย ข'},
    {'name': 'นาย ค'}
  ];

  // Future showAlert() async {
  //   String? answer = await showDialog(
  //     context: context,
  //     builder: (BuildContext context) {
  //       return AlertDialog(
  //         title: Text('Warning'),
  //         content: Column(
  //           mainAxisSize: MainAxisSize.min,
  //           children: [
  //             Text('Are you sure to remove this item?'),
  //           ],
  //         ),
  //         actions: [
  //           TextButton(
  //             onPressed: () {
  //               Navigator.of(context).pop('Cancel');
  //               setState(() {});
  //             },
  //             child: Text('Cancel'),
  //           ),
  //           TextButton(
  //             onPressed: () {
  //               Navigator.of(context).pop('OK');
  //               setState(() {});
  //             },
  //             child: Text('OK'),
  //           ),
  //         ],
  //       );
  //     },
  //   );
  // }
  

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}