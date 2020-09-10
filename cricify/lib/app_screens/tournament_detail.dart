import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class tournament_detail extends StatefulWidget {
  int tournament_id;

  tournament_detail({Key key, @required this.tournament_id}) : super(key: key);

  @override
  _tournament_detailState createState() =>
      _tournament_detailState(tournament_id);
}

class _tournament_detailState extends State<tournament_detail> {
  int tournament_id;

  _tournament_detailState(this.tournament_id);

  @override
  Widget build(BuildContext context) {
    List<Widget> container = [
      Container(
        child: ListView.builder(
            itemCount: 4,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text(
                            '1st Warmup match',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Row(
                            children: <Widget>[Text('IND',
                              style: TextStyle(
                                fontSize: 22.0,
                              ),
                            )],
                          ),
                          Row(
                            children: <Widget>[Text('139-7',
                              style: TextStyle(
                                fontSize: 22.0,
                              ),)],
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                        children: <Widget>[
                          Row(
                            children: <Widget>[Text('IND',
                              style: TextStyle(
                                fontSize: 22.0,
                              ),)],
                          ),
                          Row(
                            children: <Widget>[Text('139-7',
                              style: TextStyle(
                                fontSize: 22.0,
                              ),)],
                          )
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Text('4:00 PM , 25 AUG 2020',
                            style: TextStyle(
                              color: Colors.blue,
                            ),),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            }),
      ),
      Container(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text('Detail'),
            ),
          ],
        ),
      ),
      Container(
        color: Colors.amber,
      ),
      Container(
        color: Colors.lightGreen,
      ),
    ];

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Tournament Detail'),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                text: 'MATCHES',
              ),
              Tab(
                text: 'RESULTS',
              ),
              Tab(
                text: 'TEAMS',
              ),
              Tab(
                text: 'STATS',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: container,
        ),
      ),
    );
  }
}
