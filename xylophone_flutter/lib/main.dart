import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void playSound(int soundNumber){
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }
  Expanded buildKey({Color color,int soundNumber}){
    return Expanded(
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: color,

          ),
          onPressed: (){
            playSound(soundNumber);
          },
        )
    );
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment:CrossAxisAlignment.stretch ,
            children: [
              buildKey(color:Colors.deepPurple.shade50,soundNumber: 1),
              buildKey(color: Colors.deepPurple.shade100,soundNumber: 2),
              buildKey(color: Colors.deepPurple.shade200,soundNumber: 3),
              buildKey(color: Colors.deepPurple.shade300,soundNumber: 4),
              buildKey(color: Colors.deepPurple.shade400,soundNumber: 5),
              buildKey(color: Colors.deepPurple.shade500,soundNumber: 6),
              buildKey(color: Colors.deepPurple.shade600,soundNumber: 7),

            ],
          ),
        ),
      ),
    );
  }
}


