import 'package:flutter/material.dart';


class TrendingGenrePage extends StatefulWidget {
  final String zipCode;

  TrendingGenrePage({Key key, @required this.zipCode}) : super(key: key);

  _TrendingGenreState createState() => _TrendingGenreState();
}

class _TrendingGenreState extends State<TrendingGenrePage> {
  Widget build(BuildContext build) {
    return Scaffold(
        appBar: AppBar(
            title: Center(
                child: Text('Trending Genre Results')
            )
        ),
        body: Text(widget.zipCode),
    );
  }
}