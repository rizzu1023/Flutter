import 'package:flutter/material.dart';
import 'app_screens/tournament_detail.dart';
import 'app_screens/team_detail.dart';
import 'app_screens/stats_detail.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'global_variables/variables.dart' as gv;

void main() {
  runApp(cricify());
}

class cricify extends StatefulWidget {
  @override
  _cricifyState createState() => _cricifyState();
}

class _cricifyState extends State<cricify> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/tournament_detail': (context) => tournament_detail(),
        '/stats_detail': (context) => stats_detail(),
      },
      title: "Cricify",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: tournament(),
    );
  }
}

class tournament extends StatefulWidget {
  @override
  _tournamentState createState() => _tournamentState();
}

class _tournamentState extends State<tournament> {

  int tournament_id;

  List list = List();
  var isLoading = false;

  _fetchData() async {
    setState(() {
      isLoading = true;
    });
    final response = await http.get(gv.ipaddress + "tournament");
    if (response.statusCode == 200) {
      list = json.decode(response.body) as List;
      setState(() {
        isLoading = false;
      });
    } else {
      throw Exception('Failed to load photos');
    }
  }

  @override
  Widget build(BuildContext context) {
//    var listview = ListView(
//      children: <Widget>[
//        ListTile(
//          title: Text(
//            'Tournament 1',
//            style: TextStyle(
//              fontSize: 23.0,
//              fontWeight: FontWeight.w600,
//            ),
//          ),
//          subtitle: Text('25 aug - 30 sep'),
//        ),
//        ListTile(
//          title: Text(
//            'Tournament 3',
//            style: TextStyle(
//              fontSize: 23.0,
//              fontWeight: FontWeight.w600,
//            ),
//          ),
//          subtitle: Text('25 aug - 30 sep'),
////        onTap: () {
////          debugPrint("hello friends");
////        },
//        ),
//        RaisedButton(
//          onPressed: (){
//            Navigator.pushNamed(context, '/tournament_detail');
//          },
//          child: Text('Tournament Detail'),
//        ),
//        RaisedButton(
//          onPressed: (){
//            Navigator.pushNamed(context, '/stats_detail');
//          },
//          child: Text('Stats Detail'),
//        ),
//
//      ],
//    );



    return Scaffold(
        appBar: AppBar(
          title: Text('Cricify'),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(8.0),

          child:   RaisedButton(
            child: new Text("Fetch Data"),
            onPressed: _fetchData,
          ),
        ),
        body: isLoading
            ? Center(
          child: CircularProgressIndicator(),
        )
            : ListView.builder(
            itemCount: list.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                contentPadding: EdgeInsets.all(10.0),
                title: new Text(list[index]['tournament_name'],
                  style: TextStyle(
                    fontSize: 20.0,
                  ),),
                subtitle: Text('hello'),

                onTap: (){
//                  Navigator.pushNamed(context, '/team_detail',arguments: 'value' );
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => tournament_detail(tournament_id : list[index]['id'] ),
                ));
                },
              );
            }));
  }
}


