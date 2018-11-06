import 'package:flutter/material.dart';


class TrendingArtistsPage extends StatefulWidget {
  _TrendingArtistsState createState() => _TrendingArtistsState();
}

class _TrendingArtistsState extends State<TrendingArtistsPage> {
  Widget build(BuildContext build) {
    return Scaffold(
        appBar: AppBar(
            title: Center(
                child: Text('Trending Artist Results')
            )
        )
    );
  }
}