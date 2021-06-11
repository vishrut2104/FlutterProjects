import 'package:flutter/material.dart';
import 'package:audiofileplayer/audiofileplayer.dart';


void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  Expanded button({int number, Color color}){
    return Expanded(
      child: TextButton(
          child: Text(''),
          style: TextButton.styleFrom(
            backgroundColor: color,),
          onPressed: (){
            playsound(number);
          }
      ),
    );
  }

  void playsound(int number){
    Audio audio = Audio.load('assets/note$number.wav');
    audio.play();
    audio.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                button(number: 1,color: Colors.greenAccent),
                button(number: 2,color: Colors.deepPurpleAccent),
                button(number: 3,color: Colors.red),
                button(number: 4,color: Colors.blueAccent),
                button(number: 5,color: Colors.pinkAccent),
                button(number: 6,color: Colors.amber),
                button(number: 7,color: Colors.lightGreenAccent),
              ],
          ),
        ),
      ),
    );
  }
}
