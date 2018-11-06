import 'package:flutter/material.dart';


class TrendingSongsPage extends StatefulWidget {
  _TrendingSongsState createState() => _TrendingSongsState();
}

class _TrendingSongsState extends State<TrendingSongsPage> {
  Widget build(BuildContext build) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('Trending Songs Results')
          )
        )
    );
  }
}