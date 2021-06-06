import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  // const myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.brown,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage('images/vishrut.jpg'),
                ),
                Text(
                  "Vishrut Jain",
                  style: TextStyle(
                    fontFamily: 'Pacifico',
                    color: Colors.white,
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(" FLUTTER DEVELOPER ",
                    style: TextStyle(
                      fontFamily: 'Source Sans Pro',
                      color: Colors.brown[100],
                      fontSize: 20.0,
                      letterSpacing: 2.5,
                      fontWeight: FontWeight.bold,
                    )),
                SizedBox(
                  height: 20.0,
                  width: 200,
                  child: Divider(
                    color: Colors.brown[100],
                  ),
                ),
                Card(
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: ListTile(
                        leading: Icon(
                          Icons.phone,
                          color: Colors.brown,
                        ),
                        title: Text(
                          '+91 9560449999',
                          style: TextStyle(
                            color: Colors.brown[900],
                            fontSize: 20.0,
                          ),
                        ),
                      )),
                ),
                Card(
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: ListTile(
                        leading: Icon(
                          Icons.email,
                          color: Colors.brown,
                        ),
                        title: Text(
                          'vishrutjain.8k@gmail.com',
                          style: TextStyle(
                            color: Colors.brown[900],
                            fontSize: 20.0,
                          ),
                        ),
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
