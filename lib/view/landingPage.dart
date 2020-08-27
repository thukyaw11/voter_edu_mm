import 'package:flutter/material.dart';
import 'package:voter_education/themes/theme.dart';
import 'package:voter_education/launcher_worker.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  LauncherWorker launcherWorker = LauncherWorker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              flex: 2,
              child: ClipPath(
                clipper: WaveClipperOne(),
                child: Container(
                  height: 300.0,
                  width: 500,
                  color: AppTheme.lightTheme.primaryColor,
                  child: Container(
                      child: Column(
                    children: <Widget>[
                      SizedBox(height: 30),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 40.0),
                          child: Text(
                            "Voter Education",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0),
                          ),
                        ),
                      ),
                    ],
                  )),
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Column(
                children: <Widget>[
                  SizedBox(height: 30),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 20.0),
                    child: Image(
                      image: AssetImage('images/landingicon.png'),
                      width: 70.0,
                      height: 70.0,
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    "အများပြည်သူလေ့လာအသုံးပြုနိုင်ရန် \n ပွင့်လင်းမြန်မာ့ရှေ့ဆောင်မှ အခမဲ့ ဖြန့်ချိသည်။",
                    style: TextStyle(fontSize: 14.0),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  FlatButton(
                    child: Text(
                      "ကျွန်ုပ်တို့အကြောင်း",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    onPressed: () => Navigator.of(context).pushNamed(
                      '/aboutus',
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Container(
                    width: 240,
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        IconButton(
                            icon: FaIcon(FontAwesomeIcons.facebook),
                            iconSize: 19,
                            onPressed: launcherWorker.launchURL,
                            color: Colors.black38),
                        IconButton(
                            icon: FaIcon(FontAwesomeIcons.envelope),
                            iconSize: 19,
                            color: Colors.black38,
                            onPressed: launcherWorker.launchMail),
                        IconButton(
                          icon: FaIcon(FontAwesomeIcons.phone),
                          iconSize: 19,
                          onPressed: launcherWorker.launchPhone,
                          color: Colors.black38,
                        ),
                        IconButton(
                          icon: FaIcon(FontAwesomeIcons.mapMarker),
                          iconSize: 19,
                          color: Colors.black38,
                          onPressed: launcherWorker.launchLocation,
                        ),
                        IconButton(
                          icon: FaIcon(FontAwesomeIcons.globe),
                          iconSize: 19,
                          color: Colors.black38,
                          onPressed: launcherWorker.launchWeb,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: ClipPath(
                clipper: OvalTopBorderClipper(),
                child: Container(
                  height: 600,
                  width: 500,
                  color: AppTheme.lightTheme.primaryColor,
                  child: FlatButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/content_listing');
                    },
                    child: Center(
                      child: Text(
                        "စဖတ်ရန်",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 20.0),
                      ),
                    ),
                  ),
                  // shape: RoundedRectangleBorder(
                  //     borderRadius: BorderRadius.only(
                  //         topLeft: Radius.circular(90.0))),
                ),
              ),
            ),
          ]),
    ));
  }
}
