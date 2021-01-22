import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.cyan,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50.0,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage("images/avatar.PNG"),
              ),
              Text(
                'Keltoum Bou',
                style: TextStyle(
                  fontFamily: 'Courgette',
                  fontSize: 25.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),),
              Text(
                "SOFTWARE ENGINEER",
                style: TextStyle(
                    fontFamily: 'MarcellusSC',
                    fontSize: 20.0,
                    color: Colors.blueGrey.shade50,
                    letterSpacing: 2.0
                ),

              ),
              SizedBox(
                child: Divider(color: Colors.white),
                height: 10.0,
                width: 200.0,
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 25.0),
                child: ListTile(
                  leading: Icon(Icons.phone,
                    color: Colors.cyan,),
                  title: Text('+213 00000000',
                      style:TextStyle(
                        fontSize: 20.0,
                        color: Colors.cyan.shade900,
                        //fontFamily: 'MarcellusSC',
                      ) ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 25.0),
                child: ListTile(
                  leading: Icon(Icons.email,
                      color: Colors.cyan),
                  title:
                  Text('keltoum@email.com',
                      style:TextStyle(
                        fontSize: 20.0,
                        color: Colors.cyan.shade900,
                      ) ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

