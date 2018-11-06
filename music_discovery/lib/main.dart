import 'package:flutter/material.dart';

void main() => runApp(new HomePage());

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Center(
                child: Text('Music Discovery'),
              ),
            ),
            body: Column(children: <Widget>[
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Enter your zipcode here'),
                  ]),
              Row(children: <Widget>[
                Expanded(
                    child: TextField(
                  decoration: InputDecoration(hintText: 'Please enter zipcode'),
                ))
              ]),
              Row(children: <Widget>[
                Expanded(
                    child: RaisedButton(
                        onPressed: () {},
                        child: Text('Display Top Trending Songs')))
              ]),
              Row(children: <Widget>[
                Expanded(
                    child: RaisedButton(
                        onPressed: () {},
                        child: Text('Display Top Trending Artists')))
              ]),
              Row(children: <Widget>[
                Expanded(
                    child: RaisedButton(
                        onPressed: () {},
                        child: Text('Display Top Trending Genres')))
              ]),
            ])));
  }
}
