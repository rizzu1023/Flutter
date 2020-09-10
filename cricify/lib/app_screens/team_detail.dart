import 'package:flutter/material.dart';


class test extends StatefulWidget {

  var value;
  test({Key key, @required this.value}) : super(key: key);


  @override
  _testState createState() => _testState(value);
}

class _testState extends State<test> {

  var value;
  _testState(this.value);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('title'),
      ),
      body : Center(
        child: Text(value),
      )
    );
  }
}
