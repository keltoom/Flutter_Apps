import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        //backgroundColor:Colors.deepPurpleAccent,
        appBar: AppBar(
          title: Text('I Am Poor'),
          backgroundColor: Colors.deepOrange[200],
        ),
        body: Center(
          child: Image(
            image: AssetImage("images/rock.png"),
          ),
        ),
      ),

    ),
  );
}
