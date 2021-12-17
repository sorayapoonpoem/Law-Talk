import 'package:flutter/material.dart';

class FavouritesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Color.fromRGBO(181, 223, 247, 1.0),
                Color.fromRGBO(108, 108, 255, 1.0)
              ]),
            ),
          ),
          title: Text('Block'),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
      );
}