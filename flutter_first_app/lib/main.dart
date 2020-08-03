import 'package:flutter/material.dart';

void main() {
  runApp(myfirstapp());
}

//stateful   (Dynamic)
//stateless   (static)



class myfirstapp extends StatefulWidget {
  @override
  _myfirstappState createState() => _myfirstappState();
}

class _myfirstappState extends State<myfirstapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'StateFul Widget',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home : homepage(),
    );
  }
}


class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {

  int counter = 0;

  void counter_increament(){
    setState(() {
      counter += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("$counter"),
            RaisedButton(
              onPressed: counter_increament,
              child: Text('Click Me'),
            )
          ],
        ),
      ),
    );
  }
}








