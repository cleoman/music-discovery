import 'package:flutter/material.dart';
import 'package:music_discovery/screens/artistsbyzip.dart';
import 'package:music_discovery/screens/genrebyzip.dart';
import 'package:music_discovery/screens/songsbyzip.dart';
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
  final zipController = new TextEditingController();
  String zipCode = "";

  @override
  void dispose() {
    zipController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          title: Center(
            child: Text('Music Discovery',
                style: TextStyle(
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold,
                )),
          ),
        ),
        body: Column(children: <Widget>[
          Row(children: <Widget>[
            Expanded(
                child: TextField(
                  decoration: InputDecoration(hintText: 'Please enter zipcode'),
                  onChanged: (text) {
                    print("Text field: $text");
                  },
                  controller: zipController,
                ))
          ]),
          Row(children: <Widget>[
            Expanded(
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              ChoicesPage(zipCode: this.zipController.text)),
                    );
                  },
                  child: Text('Submit'),
                ))
          ]),
          Row(children: <Widget>[
            Expanded(
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              ChoicesPage(zipCode: this.zipController.text)),
                    );
                  },
                  child: Image.network(
                    'https://www.thecultureconcept.com/wp-content/uploads/2016/08/Cropped-Cleft-1.jpg',
                    fit: BoxFit.scaleDown,
                    alignment: Alignment.topCenter,
                  ),
                ))
          ])
        ]));
  }
}

class ChoicesPage extends StatefulWidget {
  final String zipCode;

  ChoicesPage({Key key, @required this.zipCode}) : super(key: key);

  @override
  _ChoicesPageState createState() => _ChoicesPageState();
}

class _ChoicesPageState extends State<ChoicesPage> {
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(widget.zipCode),
          ),
        ),
        body: Column(children: <Widget>[
          Row(children: <Widget>[
            Expanded(
                child: RaisedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => TrendingSongsPage(zipCode: widget.zipCode)),
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
                        MaterialPageRoute(builder: (context) => TrendingArtistsPage(zipCode: widget.zipCode)),
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
                        MaterialPageRoute(
                            builder: (context) => TrendingGenrePage(zipCode: widget.zipCode)),
                      );
                    },
                    child: Text('Display Top Trending Genres')))
          ]),
        ]));
  }
}

//creating a link between firebase and our app
