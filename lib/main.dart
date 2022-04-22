import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.pink[300],
        appBar: AppBar(
          title: Text('Layout demo'),
          backgroundColor: Colors.pink[900],
        ),
        body: SafeArea(
          child: Column(
            children: [
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/raph.jpg'),
              ),
              Text(
                'Zegenee Raphael',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 30.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'FLUTTER DEVELLOPER',
                style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  fontSize: 15.0,
                  color: Colors.pink[100],
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.5,
                ),
              ),
              // using a card widget instead of a container widget
              Card(
                // padding: EdgeInsets.all(10.0), This is not recognised in card
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),

                // This is how a padding class is included into a card class
                child: Padding(
                  padding: EdgeInsets.all(25.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.phone,
                        color: Colors.pink[900],
                      ),
                      SizedBox(
                        width: 30.0,
                      ),
                      Text(
                        '+23470 3161 2572',
                        style: TextStyle(
                          color: Colors.pink[900],
                          fontFamily: 'Source Sans Pro',
                          fontSize: 15.0,
                        ),
                      )
                    ],
                  ),
                ),
              ),

              // using a card widget instead of a container widget
              Card(
                //padding: EdgeInsets.all(10.0),
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.email,
                      color: Colors.pink[900],
                    ),
                    SizedBox(
                      width: 30.0,
                    ),
                    Text(
                      'famouszegenee@gmail.com',
                      style: TextStyle(
                        color: Colors.pink[900],
                        fontFamily: 'Source Sans Pro',
                        fontSize: 15.0,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
