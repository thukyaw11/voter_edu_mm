import 'package:flutter/material.dart';
import 'dart:convert';
import '../workers/databrain.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:voter_education/themes/theme.dart';

// ignore: camel_case_types
class Content_Listing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.lightTheme.primaryColor,
        title: Text(
          "2020 Voter Education",
          style: TextStyle(fontSize: 20),
        ),
        actions: <Widget>[
          new IconButton(
              icon: Icon(Icons.info),
              onPressed: () => Navigator.of(context).pushNamed('/aboutus')),
        ],
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Center(
                child: Text("မာတိကာ"),
              ),
            ),
            Expanded(
              flex: 16,
              child: FutureBuilder(
                future: DefaultAssetBundle.of(context)
                    .loadString('load-json/content_data.json'),
                builder: (context, AsyncSnapshot snapshot) {
                  if (snapshot.hasData) {
                    var mydata = jsonDecode(snapshot.data.toString());
                    return ListView.builder(
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              new Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 4.0, horizontal: 8.0),
                                child: Wrap(
                                  children: <Widget>[
                                    FlatButton(
                                      padding: EdgeInsets.all(0),
                                      onPressed: () =>
                                          Navigator.of(context).pushNamed(
                                        '/content_list_view_${mydata[index]['contentNumber']}',
                                        arguments: Data(
                                          title: mydata[index]['title'],
                                          subtitle: mydata[index]['subtitle'],
                                          contentNumber: mydata[index]
                                              ['contentNumber'],
                                        ),
                                      ),
                                      child: Card(
                                        elevation: 1,
                                        child: ListTile(
                                          leading: CircleAvatar(
                                            backgroundColor: AppTheme
                                                .lightTheme.primaryColor,
                                            child: Text(
                                              mydata[index]['index'],
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ),
                                          title: Text(mydata[index]['title']),
                                          subtitle: Text(
                                            mydata[index]['subtitle'],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        );
                      },
                      itemCount: mydata.length,
                    );
                  } else {
                    return SpinKitSquareCircle(
                      color: Colors.lightBlue,
                      size: 50.0,
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
