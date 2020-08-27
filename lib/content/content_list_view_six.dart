import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:voter_education/workers/databrain.dart';
import 'package:voter_education/themes/theme.dart';

// ignore: must_be_immutable
class ContentListViewSix extends StatelessWidget {
  final Data data;
  ContentListViewSix({
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
    • ဒီမိုကရေစီစနစ်တွင် နိုင်ငံရေးပါတီများ ဖွဲ့စည်းနိုင်ခွင့်ကို ဖွဲ့စည်းပုံအခြေခံဥပဒေတွင် သတ်မှတ် ပြဋ္ဌာန်း ပေးရမည်။ 
    • နိုင်ငံသားတိုင်းသည် ဖွဲ့စည်းပုံအခြေခံဥပဒေပါ သတ်မှတ်ပြဋ္ဌာန်းချက်များနှင့်အညီ နိုင်ငံရေးပါတီများကို လွတ်လပ်စွာ ဖွဲ့စည်းနိုင်ခွင့်ရှိသည်။
    • နိုင်ငံသားများသည် နိုင်ငံရေးပါတီများတွင် လွတ်လပ်စွာ ဝင်ရောက်ခွင့်၊ ပံ့ပိုးကူညီခွင့် ရှိရမည်။
    
နိုင်ငံရေးပါတီများမှလည်း ၎င်းတို့၏ မူဝါဒများ ချပြဆွေးနွေးခြင်းနှင့် စည်းရုံးခြင်းများကို လွတ်လပ်စွာ ဆောင်ရွက်ခွင့် ရှိရမည်။
            """)
          ],
        ));
  }
}
