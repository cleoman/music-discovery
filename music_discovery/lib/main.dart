import 'package:flutter/material.dart';
import 'package:music_discovery/screens/songsbyzip.dart';
import 'package:music_discovery/screens/genrebyzip.dart';
import 'package:music_discovery/screens/artistsbyzip.dart';
//comment

void main() {
  runApp(new App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Music Discovery',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('Music Discovery'),
          ),
        ),
        body: Column(children: <Widget>[
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Enter your zipcode here'),
              ]),
          Row(children: <Widget>[
            Expanded(
                child: TextField(
                  decoration: InputDecoration(hintText: 'Please enter zipcode'),
                ))
          ]),
          Row(children: <Widget>[
            Expanded(
                child: RaisedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TrendingSongsPage()),
                      );
                    },
                    child: Text('Display Top Trending Songs')))
          ]),
          Row(children: <Widget>[
            Expanded(
                child: RaisedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TrendingArtistsPage()),
                      );
                    },
                    child: Text('Display Top Trending Artists')))
          ]),
          Row(children: <Widget>[
            Expanded(
                child: RaisedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TrendingGenrePage()),
                      );
                    },
                    child: Text('Display Top Trending Genres')))
          ]),
        ]));
  }
}
