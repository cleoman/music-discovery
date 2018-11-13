import 'package:flutter/material.dart';


class TrendingSongsPage extends StatefulWidget {
  final String zipCode;

  TrendingSongsPage({Key key, @required this.zipCode}) : super(key: key);

  _TrendingSongsState createState() => _TrendingSongsState();
}

class _TrendingSongsState extends State<TrendingSongsPage> {
  Widget build(BuildContext build) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('Trending Songs Results')
          )
        ),
      body: Text(widget.zipCode),
    );
  }
}