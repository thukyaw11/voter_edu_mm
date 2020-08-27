import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:voter_education/workers/databrain.dart';
import 'package:voter_education/themes/theme.dart';

// ignore: must_be_immutable
class ContentListViewTen extends StatelessWidget {
  final Data data;
  ContentListViewTen({
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
ရွေးကောက်ပွဲပြစ်မှုများနှင့်တရားမဲ့ပြုကျင့်မှုများ
ရွေးကောက်ပွဲဥပဒေအခန်း(၁၃) 
(က) ပြစ်မှုများ-
(၁)	ရွေးကောက်ပွဲပြစ်မှုများကိုရွေးကောက်ပွဲဥပဒေအခန်း (၁၃)တွင် ပုဒ်မ    (၅၇) မှ (၆၅)အထိ ပြဌာန်းထားပါသည်။
(၂)	တရားရုံးကစစ်ဆေးစီရင်သည့် အမှုများဖြစ်ပါသည်။ 
(၃)	ထောင်ဒဏ်၊ ငွေဒဏ် ချမှတ်နိုင်ပါသည်။ 
(၄)	ရဲအရေးပိုင်အမှုများ ဖြစ်ပါသည်။
(၅)	ရွေးကောက်ပွဲမကျင်းပမီသို့မဟုတ် ရွေးကောက်ပွဲကျင်းပနေစဉ် သို့မဟုတ် ရွေးကောက်ပွဲကျင်းပသောနေ့မှ ၁၅ ရက်အတွင်း တိုင်ကြားရမည်။
            """)
          ],
        ));
  }
}
