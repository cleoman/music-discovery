import 'package:flutter/material.dart';


class TrendingArtistsPage extends StatefulWidget {
  final String zipCode;

  TrendingArtistsPage({Key key, @required this.zipCode}) : super(key: key);

  _TrendingArtistsState createState() => _TrendingArtistsState();
}

class _TrendingArtistsState extends State<TrendingArtistsPage> {

  Widget build(BuildContext build) {
    return Scaffold(
        appBar: AppBar(
            title: Center(
                child: Text("Trending Artists Results")
            ),
        ),
      body: Text(widget.zipCode)
    );
  }
}