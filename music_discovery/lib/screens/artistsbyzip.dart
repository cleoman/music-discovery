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

class TrendingArtistsPage extends StatefulWidget {
  final String zipCode;

  TrendingArtistsPage({Key key, @required this.zipCode}) : super(key: key);

  _TrendingArtistsState createState() => _TrendingArtistsState();

  }

  class _TrendingArtistsState extends State<TrendingArtistsPage> {
    _Data query = new _Data('1','2','3','4','5','6','7','8','9','10');
    var data;

    Widget build(BuildContext build) {
      return Scaffold(
          appBar: AppBar(
            title: Center(
                child: Text("Trending Artists Results")
            ),
          ),
          body: ListView(
            children: <Widget>[
              ListTile(
                title: Text(query.artist1),
              ),
              ListTile(
                title: Text(query.artist2),
              ),
              ListTile(
                title: Text(query.artist3),
              ),
            ],
          ) //Text(widget.zipCode),
      );
    }


    @override
    void initState() {
      super.initState();
      DatabaseReference ref = FirebaseDatabase.instance.reference();
      ref.child(widget.zipCode).once().then((DataSnapshot snap) {
        this.setState(() {
          data = snap.value;
          query.artist1 = data["artist1"];
          query.artist2 = data["artist2"];
          query.artist3 = data["artist3"];
        });
      });

      // ignore: expected_token
    }



  }


