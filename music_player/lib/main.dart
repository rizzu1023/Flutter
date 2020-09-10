import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class SongModel{
  String song_name;
  String song_source;

  SongModel({this.song_name,this.song_source});

  factory SongModel.fromJson(Map<String,dynamic> json){
    return SongModel(
      song_name: json['song_name'],
      song_source: json['song_source'],
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Music Player',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text(''),
          backgroundColor: Colors.white,
          elevation: 0,
          actions: [
            Icon(
              Icons.search,
              color: Colors.pink,
            ),
            SizedBox(
              width: 15.0,
            ),
            Icon(
              Icons.more_vert,
              color: Colors.pink,
            ),
            SizedBox(
              width: 15.0,
            ),
          ],
          bottom: TabBar(
            labelColor: Colors.pink,
            unselectedLabelColor: Colors.black,
            labelStyle: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.w500,
            ),
            indicatorColor: Colors.pink,
            tabs: [
              Tab(
                text: 'Songs',
              ),
              Tab(
                text: 'Artists',
              ),
              Tab(
                text: 'Albums',
              ),
              Tab(
                text: 'Playlists',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [Songs(), Artists(), Albums(), Playlists()],
        ),
        bottomNavigationBar: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          height: 70,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                offset: Offset(0,-10),
                blurRadius: 35,
                color: Colors.black.withOpacity(0.04)
              )
            ]
          ),
          child: Row(
            children: [
              Image.asset('assets/images/thumbnail.png'),
              Text('Money Heist'),
              Spacer(),
              Icon(Icons.play_arrow,color: Colors.black,),
              SizedBox(width: 18,),
              Icon(Icons.menu,color: Colors.black,size: 20,)


            ],
          ),
        ),
      ),
    );
  }
}

class Songs extends StatelessWidget {
  List songs = [
    SongModel(song_name: 'Baarish', song_source: 'wapking.com'),
    SongModel(song_name: 'Mann Mera', song_source: 'unknown'),
    SongModel(song_name: 'Money Heist - Soundtrack', song_source: 'soundtrack.com'),
    SongModel(song_name: 'Thodi Der', song_source: 'unknown_source.com'),

  ];
  
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: ScrollPhysics(),
      child: Column(
        children: [
          Container(
            color: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: songs.length,itemBuilder: (BuildContext context, int index){
              return ListTile(
                title: Text(songs[index].song_name),
                contentPadding: EdgeInsets.symmetric(horizontal: 0),
                subtitle: Text(songs[index].song_source),
                trailing: Icon(Icons.more_vert,color: Colors.grey[400],),
                onTap: (){},
              );
            }),
          ),
        ],
      ),
    );
  }

 
}

class Artists extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class Albums extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class Playlists extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
