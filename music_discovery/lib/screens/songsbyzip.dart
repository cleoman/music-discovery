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

class TrendingSongsPage extends StatefulWidget {
  final String zipCode;

  TrendingSongsPage({Key key, @required this.zipCode}) : super(key: key);

  _TrendingSongsState createState() => _TrendingSongsState();
}

class _TrendingSongsState extends State<TrendingSongsPage> {
  _Data query = new _Data('1','2','3','4','5','6','','','','10');
  var data;

  Widget build(BuildContext build) {
    return Scaffold(
        appBar: AppBar(
            title: Center(
                child: Text('Trending Songs Results')
            )
        ),
        body: ListView(
          children: <Widget>[
            ListTile(
              title: Text(query.song1),
            ),
            ListTile(
              title: Text(query.song2),
            ),
            ListTile(
              title: Text(query.song3),
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
        if(data == null){
          query.song1 = "zipcode not found in database";
        }
        else {
          query.song1 = data["song1"];
          query.song2 = data["song2"];
          query.song3 = data["song3"];
        }
      });

    });

  }

}