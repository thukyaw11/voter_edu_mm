import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:voter_education/workers/databrain.dart';
import 'package:voter_education/themes/theme.dart';

// ignore: must_be_immutable
class ContentListViewEleven extends StatelessWidget {
  final Data data;
  ContentListViewEleven({
    Key key,
    @required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey =
        new GlobalKey<ScaffoldState>();
    final copied = ClipboardData(text: "text");
    Clipboard.setData(copied);
    _showSnackBar() {
      print("Show Snackbar here !");
      final snackBar = new SnackBar(
          content: new Text("Copied to Clipboard"),
          duration: new Duration(seconds: 2),
          backgroundColor: AppTheme.lightTheme.primaryColor);

      _scaffoldKey.currentState.showSnackBar(snackBar);
    }

    return Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          title: Text(
            data.subtitle,
            style: TextStyle(fontSize: 15.0),
          ),
          backgroundColor: AppTheme.lightTheme.primaryColor,
          actions: <Widget>[
            new IconButton(
              icon: Icon(Icons.content_copy),
              onPressed: _showSnackBar,
            ),
          ],
        ),
        body: ListView(
          padding: EdgeInsets.all(8.0),
          children: <Widget>[
            Text(
              data.title,
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text("""
PDF download links
            """)
          ],
        ));
  }
}
