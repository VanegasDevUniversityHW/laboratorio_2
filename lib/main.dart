import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Mario Vanegas"),
          backgroundColor: Colors.black,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Laboratorio 2",
                style: TextStyle(
                    fontSize: 24,
                    fontFamily: 'Lobster'
                ),
              ),
              StatefulView()
            ],
          )
        ),
      ),
    );
  }
}

class StatefulView extends StatefulWidget {
  @override
  State createState() => _StatefulView();
}

class _StatefulView extends State<StatefulView> {
  var isSwitchOn = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(isSwitchOn ? "Images/interruptor1.jpeg" : "Images/interruptor0.jpg"),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlatButton(
                onPressed: () {
                  setState(() {
                    isSwitchOn = true;
                  });
                },
                color: Colors.green,
                child: Text("On")
            ),
            FlatButton(
                onPressed: () {
                  setState(() {
                    isSwitchOn = false;
                  });
                },
                color: Colors.red,
                child: Text("Off")
            )
          ],
        )
      ],
    );
  }
}