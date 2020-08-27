import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:voter_education/workers/databrain.dart';
import 'package:voter_education/themes/theme.dart';

// ignore: must_be_immutable
class ContentListViewFive extends StatelessWidget {
  final Data data;
  ContentListViewFive({
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
           	ရွေးကောက်ပွဲ လုပ်ငန်းစဉ်တွင် မဲပေးခြင်းသည် အဓိက အရေးပါသော လုပ်ငန်းစဉ်တစ်ရပ် ဖြစ်သည်။ မဲပေးပိုင်ခွင့်ရှိသူ တစ်ဦးသည် မဲတစ်ကြိမ် ပေးခွင့်ရသည်။ မဲပေးခွင့် မရရှိခြင်းနှင့် မဲတစ်ကြိမ် ထက် ပိုပေးခွင့် ရရှိပါက ထိုရွေးကောက်ပွဲမျိုးသည် မျှတမှုရှိသော ရွေးကောက်ပွဲတစ်ခုဟု မခေါ်ဆိုနိုင်ပါ။
(၁)	မဲပေးသည့် လုပ်ငန်းစဉ်သည် မျှတရမည်။
(၂)	မဲပေးပိုင်ခွင့်ရှိသည့် လူစာရင်းကို တိကျစွာ ကောက်ခံထုတ်ပြန်ရမည်။
(၃)	မဲလက်မှတ်များဖြင့် မဲပေးခြင်း၊ မဲရေတွက်ခြင်း၊ ရလဒ်ထုတ်ပြန်ခြင်း လုပ်ငန်းစဉ်များကို သတ်မှတ် ထားသော ဥပဒေအတိုင်း ဆောင်ရွက်ရမည်။
(၄)	ဆန္ဒမဲပေးသည့် မဲဆန္ဒရှင်တိုင်းသည်လည်း ရိုးသားမှု ရှိရမည်။
(၅)	လျှို့ဝှက်မဲပေးသည့် လုပ်ငန်းစဉ်ကို ဆောင်ရွက်ရမည်။
(၆)	မဲပေးသည့် နေရာသည် အများမြင်သာသည့် နေရာတွင် ရှိရမည်ဖြစ်သော်လည်း မဲဆန္ဒရှင်သည် လျှို့ဝှက် ဆန္ဒပြုနိုင်ရမည်။
(၇)	မဲဆန္ဒရှင်တိုင်းအား မိမိဆန္ဒပြုရမည့် မဲရုံကို သိရှိအောင် ပြုလုပ်ပေးရမည်။
            """)
          ],
        ));
  }
}
