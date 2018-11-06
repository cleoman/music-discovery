import 'package:flutter/material.dart';


class TrendingGenrePage extends StatefulWidget {
  _TrendingGenreState createState() => _TrendingGenreState();
}

class _TrendingGenreState extends State<TrendingGenrePage> {
  Widget build(BuildContext build) {
    return Scaffold(
        appBar: AppBar(
            title: Center(
                child: Text('Trending Genre Results')
            )
        )
    );
  }
}