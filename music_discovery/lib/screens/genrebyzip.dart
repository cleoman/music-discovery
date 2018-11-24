import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

class _Data {
  String artist1, artist2, artist3;
  String genre1, genre2, genre3;
  String song1, song2, song3;
  String zipcode;

  _Data(this.artist1, this.artist2, this.artist3, this.genre1, this.genre2,
      this.genre3, this.song1, this.song2, this.song3, this.zipcode);
}

class TrendingGenrePage extends StatefulWidget {
  final String zipCode;

  TrendingGenrePage({Key key, @required this.zipCode}) : super(key: key);

  _TrendingGenreState createState() => _TrendingGenreState();
}

class _TrendingGenreState extends State<TrendingGenrePage> {
  _Data query = new _Data('1','2','3','4','5','6','7','8','9','10');
  var data;

  Widget build(BuildContext build) {
    return Scaffold(
        appBar: AppBar(
            title: Center(
                child: Text('Trending Genre Results')
            )
        ),
        body: ListView(
          children: <Widget>[
            ListTile(
              title: Text(query.genre1),
            ),
            ListTile(
              title: Text(query.genre2),
            ),
            ListTile(
              title: Text(query.genre3),
            ),
          ],
        )//Text(widget.zipCode),
    );
  }

  @override
  void initState() {
    super.initState();
    DatabaseReference ref = FirebaseDatabase.instance.reference();
    ref.child(widget.zipCode).once().then((DataSnapshot snap) {
      this.setState(() {
        data = snap.value;
        query.genre1 = data["genre1"];
        query.genre2 = data["genre2"];
        query.genre3 = data["genre3"];
      });

    });

  }

}