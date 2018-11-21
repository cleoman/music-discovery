import 'package:flutter/material.dart';
import 'package:music_discovery/screens/artistsbyzip.dart';
import 'package:music_discovery/screens/genrebyzip.dart';
import 'package:music_discovery/screens/songsbyzip.dart';
//comment

void main() {
  runApp(new App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Music Discovery',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

enum MyDialogAction{
  ok
}

class _HomePageState extends State<HomePage> {
  final zipController = new TextEditingController();
  String zipCode = "";
  //used for constraint on zipcode length
  int inputLength = 0;

  @override
  void dispose() {
    zipController.dispose();
    super.dispose();
  }

  //two methods for a pop up alert if it is < 5 digits
  void dialogResult(MyDialogAction value){
    Navigator.pop(context);
  }
  void _showAlert(String value){
    if(value.length == 5){
      return;
    }
    AlertDialog dialog = new AlertDialog(
      content: new Text("Enter a 5 digit zipcode"),
      actions: <Widget>[
        new FlatButton(onPressed: (){dialogResult(MyDialogAction.ok);},
        child: new Text("OK"))
      ],
    );
    
    showDialog(context: context, builder: (BuildContext context)=>dialog);
  }

  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Center(
            child: Text('Music Discovery',
                style: TextStyle(
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold,
                )),
          ),
        ),
        resizeToAvoidBottomPadding: false,
        body: Column(children: <Widget>[
          Row(children: <Widget>[
            Expanded(
                child: TextField(
                  maxLength: 5, //has a max of 5, so the user does not exceed it
              decoration: InputDecoration(hintText: 'Please enter zipcode'),
              onChanged: (text) {
                    inputLength = text.length;//records the input length
                    print("Text field: $text");

              },
              controller: zipController,
            ))
          ]),
          Row(children: <Widget>[
            Expanded(
                child: RaisedButton(
              onPressed: () {
                if(inputLength < 5){//if it is not a 5 digit zipcode
                  _showAlert(zipCode);
                }
                else if (inputLength == 5){//if it is valid, continues
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            ChoicesPage(zipCode: this.zipController.text)),
                  );
                }
              },
              child: Text('Submit'),
            ))
          ]),
          Row(children: <Widget>[
            Expanded(
                child: RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          ChoicesPage(zipCode: this.zipController.text)),
                );
              },
              child: Image.network(
                'https://www.thecultureconcept.com/wp-content/uploads/2016/08/Cropped-Cleft-1.jpg',
                fit: BoxFit.scaleDown,
                alignment: Alignment.topCenter,
              ),
            ))
          ])
        ]));
  }
}

class ChoicesPage extends StatefulWidget {
  final String zipCode;

  ChoicesPage({Key key, @required this.zipCode}) : super(key: key);

  @override
  _ChoicesPageState createState() => _ChoicesPageState();
}

class _ChoicesPageState extends State<ChoicesPage> {
  Widget build(BuildContext context) {
    return new Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Center(
            child: Text("Zipcode:" + widget.zipCode),
          ),
        ),
        body: Column(children: <Widget>[
          Row(children: <Widget>[
            Expanded(
                child: RaisedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                TrendingSongsPage(zipCode: widget.zipCode)),
                      );
                    },
                    child: Text('Display Top Trending Songs')))
          ]),
          Row(children: <Widget>[
            Expanded(
                child: RaisedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                TrendingArtistsPage(zipCode: widget.zipCode)),
                      );
                    },
                    child: Text('Display Top Trending Artists')))
          ]),
          Row(children: <Widget>[
            Expanded(
                child: RaisedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                TrendingGenrePage(zipCode: widget.zipCode)),
                      );
                    },
                    child: Text('Display Top Trending Genres')))
          ]),
          Row(children: <Widget>[
            Expanded(
                child: RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          TrendingGenrePage(zipCode: widget.zipCode)),
                );
              },
              child: Image.network(
                'https://www.thecultureconcept.com/wp-content/uploads/2016/08/Hands-Up-Music.jpg',
                fit: BoxFit.cover,
                height: 440.0,
                alignment: Alignment.topCenter,
              ),
            ))
          ]),
        ]));
  }
}

//creating a link between firebase and our app
