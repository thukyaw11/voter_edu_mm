import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:voter_education/workers/databrain.dart';
import 'package:voter_education/themes/theme.dart';

// ignore: must_be_immutable
class ContentListViewFour extends StatelessWidget {
  final Data data;
  ContentListViewFour({
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
            ဒီမိုကရေစီနိုင်ငံတစ်ခုတွင် ရွေးကောက်ပွဲ လုပ်ငန်းစဉ်သည် မရှိမဖြစ် လိုအပ်သော လုပ်ငန်းစဉ် ဖြစ်ပါသည်။ သို့သော် ရွေးကောက်ပွဲ ပြုလုပ်တိုင်း ဒီမိုကရေစီစနစ် ကျင့်သုံးသောနိုင်ငံဟုလည်း တရားသေ သတ်မှတ် ခေါ်ဆို၍ မရနိုင်ပါ။ ဒီမိုကရေစီစနစ် ကျင့်သုံးသည့် နိုင်ငံများတွင် ရွေးကောက်ပွဲ လုပ်ငန်းစဉ်များသည် အောက်ပါအချက်များ နှင့် ကိုက်ညီရပါမည် -
(က)	ရွေးကောက်ပွဲများသည် လွတ်လပ်မှု ရှိရမည်။ (Election must be free)
(ခ)	ရွေးကောက်ပွဲများသည် မျှတမှု ရှိရမည်။ (Election must be fair)
(ဂ)	ရွေးကောက်ပွဲများကို အချိန်မှန် ကျင်းပပေးရမည်။ (Election must be regular)
(ဃ)	ရွေးကောက်ပွဲတစ်ခုနှင့်တစ်ခု စဉ်ဆက်မပြတ် ချိတ်ဆက်နေရမည်။ (Election must be frequent)

(က) ရွေးကောက်ပွဲများသည် လွတ်လပ်မှု ရှိရမည်။ (Election must be free)
(၁)	မဲပေးပိုင်ခွင့်ရှိသော နိုင်ငံသားတိုင်း၊ ကျား/ မ၊ ဆင်းရဲ/ ချမ်းသာ၊ ဘာသာ၊ လူမျိုးမရွေး မိမိဆန္ဒနှင့် အညီ လွတ်လပ်စွာ မဲပေးရမည်။
(၂)	နိုင်ငံရေးပါတီအားလုံးသည် အခြေခံဥပဒေနှင့်အညီ ပြဋ္ဌာန်းထားသည့် ရွေးကောက်ပွဲများအတိုင်း အနှောင်အဖွဲ့ကင်းစွာ၊ လွတ်လပ်စွာ၊ တန်းတူယှဉ်ပြိုင်ခွင့် ရှိရမည်။
(၃)	ရွေးကောက်ပွဲဝင် ပါတီများ၊ တစ်သီးပုဂ္ဂလများသည် မိမိတို့၏ နိုင်ငံရေး ရည်ရွယ်ချက်၊ လုပ်ဆောင်မည့် ပုံစံများအားလုံးကို ဥပဒေနှင့်အညီ လွတ်လပ်စွာ တန်းတူဟောပြော စည်းရုံးခွင့် ရှိရမည်။
(ခ)	ရွေးကောက်ပွဲများသည် မျှတမှု ရှိရမည်။ (Election must be fair)
(၁)	ရွေးကောက်ပွဲတွင် ဝင်ရောက်ယှဉ်ပြိုင်မည့် ပါတီ၊ လူပုဂ္ဂိုလ်တိုင်းသည် လက်ရှိအာဏာရနေသော ပါတီ၊ လူပုဂ္ဂိုလ်တို့နှင့် တန်းတူအခွင့်အရေး ရရမည်။
(၂)	ရွေးကောက်ပွဲ လုပ်ငန်းစဉ်ကို တာဝန်ယူဆောင်ရွက်နေသော အဖွဲ့သည် ယခုလက်ရှိ အာဏာရ နေသော နိုင်ငံရေးပါတီ၊ လူပုဂ္ဂိုလ်တို့၏ ဩဇာအာဏာ လွတ်ကင်းသော သီးခြားအဖွဲ့အစည်းမှ တာဝန်ယူ ဆောင်ရွက်ရမည်။
(၃)	ရွေးကောက်ပွဲ စီမံခန့်ခွဲမှုအဖွဲ့မှ ရွေးကောက်ပွဲနှင့်ဆိုင်သော ဥပဒေများ ပြဋ္ဌာန်းရာတွင်လည်း လက်ရှိ အာဏာရှိနေသော သူများမှ ဝင်ရောက်စွက်ဖက်၊ လွှမ်းမိုးခြင်းမှ ကင်းလွတ်ရမည်။

(ဂ)	ရွေးကောက်ပွဲများကို အချိန်မှန် ကျင်းပပေးရမည်။ (Election must be regular)
(၁)	ရွေးကောက်ပွဲများကို ဥပဒေအရ ပြဋ္ဌာန်းသတ်မှတ်ထားသည့် အချိန်အတိုင်း အတိအကျဖြစ်စေရန် ကျင်းပပေးရမည်။ ရွေးကောက်ပွဲ တစ်ခုနှင့် တစ်ခုအကြား ကွာခြားသော အချိန်ကာလ သတ်မှတ် ချက်သည် ပုံမှန် ဖြစ်နေရမည်။

(ဃ)	ရွေးကောက်ပွဲတစ်ခုနှင့်တစ်ခု စဉ်ဆက်မပြတ် ချိတ်ဆက်နေရမည်။ (Election must be frequent)
၁။	အထွေထွေရွေးကောက်ပွဲ၊ ကြားဖြတ်ရွေးကောက်ပွဲများအပြင် အခြားဒေသန္တရ ရွေးကောက်ပွဲ အသီးသီးတို့ကို တစ်ခုနှင့်တစ်ခု ချိတ်ဆက်၍ ဆောင်ရွက်နိုင်အောင် သတ်မှတ်ပြဋ္ဌာန်းထားပေး ရမည်။
            """)
          ],
        ));
  }
}
