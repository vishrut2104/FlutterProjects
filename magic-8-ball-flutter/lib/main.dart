import 'package:flutter/material.dart';
import 'dart:math';
void main() => runApp(
      MaterialApp(
       home: BallPage()
      ),
    );



class Ball extends StatefulWidget {

  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 20,
        ),
        Center(child: FlatButton(
          onPressed:(){
            setState(() {
              ballNumber = Random().nextInt(5)+1;
            });
          },
          child: Image.asset('images/ball$ballNumber.png',
          height:300.0,
          fit: BoxFit.cover
          )
        ),
        )
      ],
    );
  }
}



class BallPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.indigo[300],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor:Colors.indigo[700],
        title: Text("Ask Me Anything",
        style: TextStyle(
          fontFamily: 'Pacifico',
        ),),
      ),
      body: Ball(),
    );
  }
}

