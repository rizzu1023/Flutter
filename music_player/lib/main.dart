import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class SongModel{
  String song_name;
  String song_source;
  bool play;

  SongModel({this.song_name,this.song_source,this.play});

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
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage('assets/images/money_heist.png'),
                      fit: BoxFit.fill,
                    )
                ),
              ),
              SizedBox(width: 10,),
              Text('Money Heist - Soundtrack ...',style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),),
              Spacer(),
              Icon(Icons.play_circle_outline,color: Colors.black,),
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
    SongModel(song_name: 'Baarish', song_source: 'wapking.com',play: false),
    SongModel(song_name: 'Mann Mera', song_source: 'unknown',play: false),
    SongModel(song_name: 'Money Heist - Soundtrack', song_source: 'soundtrack.com',play: true),
    SongModel(song_name: 'Thodi Der', song_source: 'unknown_source.com',play: false),

  ];
  
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        SingleChildScrollView(
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
                    title: Text(songs[index].song_name, style:  TextStyle(
                        color: songs[index].play ? Colors.pink : Colors.black
                    ),),
                    contentPadding: EdgeInsets.symmetric(horizontal: 0),
                    subtitle: Text(songs[index].song_source, style: TextStyle(
                      color: songs[index].play ? Colors.pink : Colors.black
                    ),),
                    trailing: Icon(Icons.more_vert,color: songs[index].play ? Colors.pink : Colors.grey[300]
                      ,),
                    onTap: (){},
                  );
                }),
              ),
            ],
          ),
        ),
        Positioned(
          left: 0,
          bottom: -height,
          child: MenuWidget(),
        )
      ],
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

class MenuWidget  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 50,vertical: 10),
      width: width,
      height: height/1.25,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(topRight: Radius.circular(22.0),topLeft: Radius.circular(22.0)),
        // border: Border(
        //   top: BorderSide(width: 1,color: Colors.grey)
        // ),
      ),
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 250,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(22),
              image: DecorationImage(
                image: AssetImage('assets/images/money_heist.png'),
                fit: BoxFit.fill,
              )
            ),
      ),
          SizedBox(height: 30,),
          Stack(
            overflow: Overflow.visible,
            children: [
              Container(
                height: 5,
                decoration: BoxDecoration(
                    color: Colors.grey[400],
                    borderRadius: BorderRadius.circular(5)
                ),
              ),
              Container(
                height: 5,
                width: MediaQuery.of(context).size.width /2,
                decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(5)
                ),
              ),
              Positioned(
                top: -2,
                left: width/2 -3,
                child: CircleAvatar(
                  backgroundColor: Colors.pink,
                  radius: 5,
                ),
              )
            ],
          ),
          SizedBox(height: 3,),
          Row(
            children: [
              Text('03:36',style: TextStyle(color: Colors.pink),),
              Spacer(),
              Text('04:11',style: TextStyle(color: Colors.pink),),
            ],
          ),
          SizedBox(height: 35),
          Text('Money Heist - Soundtrack ...',style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: 22
          ),),
          SizedBox(height: 5,),
          Text('Unknown artist',style: TextStyle(
            color: Colors.grey,
            fontSize: 15,
          ),),
          SizedBox(height: 40,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.skip_previous,size: 35,color: Colors.pink),
              Icon(Icons.play_circle_filled,size: 70,color: Colors.pink,),
              Icon(Icons.skip_next,size: 35,color: Colors.pink),
            ],
          ),
          SizedBox(height: 50,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.menu),
              Icon(Icons.favorite,color: Colors.pink,),
              Icon(Icons.swap_horiz),
              Icon(Icons.more_horiz),
            ],
          )


        ],
      ),
    );
  }
}

