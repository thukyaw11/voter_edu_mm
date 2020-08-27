import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:voter_education/workers/databrain.dart';
import 'package:voter_education/themes/theme.dart';

// ignore: must_be_immutable
class ContentListViewThree extends StatelessWidget {
  final Data data;
  ContentListViewThree({
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
            ရွေးကောက်ပွဲစနစ်ဆိုသည်မှာ အခြေခံသဘောတရားအားဖြင့် ရွေးကောက်ပွဲများတွင် ပါတီ (သို့) ကိုယ်စားလှယ်လောင်းများ ရရှိသော ဆန္ဒမဲများအပေါ်တွင် တွက်ချက်၍ လွတ်တော်အသီးသီးတွင် ကိုယ်စားလှယ် နေရာရရှိမှုအပေါ် အသွင်ပြောင်း သတ်မှတ်သော စနစ်ဖြစ်ပါသည်။
	ဆန္ဒမဲလက်မှတ်များကို အသွင်ပြောင်းတွက်ချက်ရာတွင် စနစ်တစ်ခုနှင့်တစ်ခု မတူညီသည်ကို တွေ့ရပါသည်။ ကမ္ဘာပေါ်တွင် အဓိကအားဖြင့် ရွေးကောက်ပွဲစနစ် (၃) မျိုးသာ ရှိသည်ကို တွေ့ရှိရပါသည်။ ထိုစနစ် (၃) မျိုးကို အခြေခံ၍ အမျိုးကွဲလေးများလည်းရှိပါသည်။
	(၁)	အများစု ကိုယ်စားပြုစနစ် (Plurality/ Majority System)
	(၂)	အချိုးကျ ကိုယ်စားပြုစနစ် (Proportional Representation (PR) System)
	(၃)	ရောနှောပေါင်းစပ်စနစ် (Mixed System) တို့ ဖြစ်ပါသည်။

(က) အများစု ကိုယ်စားပြုစနစ် (Plurality/ Majority System)
	ထိုစနစ်အောက်တွင် ပုံစံကွဲ (၅) မျိုး ရှိပါသည် -
	(က)	နိုင်သူအကုန်ယူစနစ် (First Past The Post - FPTP)
	(ခ)	ကိုယ်စားလှယ်အများဗဟိုပြု နိုင်သူယူစနစ် (Block Vote - BV)
	(ဂ)	ပါတီဗဟိုပြု နိုင်သူယူစနစ် (Party Block Vote - PBV)
	(ဃ)	အဆင့်လိုက်မဲပေးစနစ် (Alternative Vote - AV)
	(င)	နှစ်ကျော့ပြန်စနစ် (Two Round System - TRS)
မြန်မာနိုင်ငံတွင် အများစု ကိုယ်စားပြုစနစ် (၅) မျိုးအနက် နိုင်သူအကုန်ယူ (FPTP) စနစ်ကို ကျင့်သုံးလျက်ရှိသည်။ 
(ခ) နိုင်သူအကုန်ယူစနစ် (First Past The Post – FPTP)
	နိုင်သူအကုန်ယူစနစ် (First Past The Post - FPTP) သည် Plurality/ Majority စနစ်တွင် အရှင်းဆုံး စနစ်ဖြစ်သည်။ မဲဆန္ဒနယ်မြေတစ်ခုချင်းစီ သတ်မှတ်၍ ကိုယ်စားလှယ်လောင်းတစ်ဦးစီမှ ဝင်ရောက် ယှဉ်ပြိုင်သော စနစ်ဖြစ်သည်။ မဲဆန္ဒရှင်များမှ မိမိနှစ်သက်ရာ ကိုယ်စားလှယ်လောင်းတစ်ဦးကိုသာ ရွေးချယ် မဲပေးရ၍ ဆန္ဒမဲ လက်မှတ် အများဆုံးရရှိသော ကိုယ်စားလှယ်လောင်းမှာ ထိုမဲဆန္ဒနယ်တွင် အနိုင်ရသည့် စနစ်ဖြစ်ပါသည်။ 
	ကိုယ်စားလှယ်လောင်း တစ်ဦးစီအပေါ်တွင် အဓီကထား ရွေးချယ်သောစနစ်ဖြစ်ပြီး ကမ္ဘာ့နိုင်ငံပေါင်း (၂၁၃) နိုင်ငံတွင် ၂၂% သည် နိုင်သူအကုန်ယူစနစ် (First Past The Post - FPTP) ကို ကျင့်သုံးပါသည်။ ဗြိတိသျှ လက်အောက်ခံနိုင်ငံဖြစ်ခဲ့သော နိုင်ငံများတွင် အသုံးပြုလေ့ရှိပါသည်။
အားသာချက်များ
၁။	နိုင်သူအကုန်ယူစနစ် (First Past The Post - FPTP) စနစ်၏ လုပ်ထုံးလုပ်နည်းများသည် ရှင်းလင်း လွယ်ကူသည်။
၂။ 	နယ်မြေတစ်ခုချင်းစီကို အခြေခံသော ကိုယ်စားလှယ်များအပေါ် တွက်သည်။
၃။	ပါတီကြီး (၂) ပါတီကသာ လွှမ်းမိုးနိုင်သောစနစ် ဖြစ်သောကြောင့် မဲဆန္ဒရှင်များ အလွယ်တကူ ရွေးချယ် နိုင်သည်။
၄။	ပါတီတစ်ခုထဲမှ ဦးဆောင်သော အစိုးရမျိုး ပေါ်ထွက်စေသည်။
၅။	အစိုးရအနေဖြင့် ပါတီတစ်ခုထဲမှ ဖြစ်သောကြောင့် မူဝါဒချမှတ်ရာတွင် လျင်မြန်လွယ်ကူသည်။
၆။	တစ်ဦးပုဂ္ဂလကိုယ်စားလှယ်များပေါ်ထွက်နိုင်သည့် အခွင့်အလမ်းရှိသည်။
၇။	မဲပေးသည့်စနစ်သည် အလွန်ရိုးရှင်းပြီး ရွေးကောက်ပွဲ စီမံခန့်ခွဲရသူများအတွက် လုပ်ငန်း ဆောင်ရွက်ရာတွင် လွယ်ကူသည်။
၈။	အယူဝါဒရေးရာပိုင်းတွင် အစွန်းရောက်သူများသည် နယ်မြေဒေသတစ်ခုတည်းတွင် စုစည်းခြင်း မရှိခဲ့လျှင် လွှတ်တော်တွင် အစွန်းရောက်များ နေရာရနိုင်မှု အလွန်ခက်ခဲသည်။

အားနည်းချက်များ
၁။	ပါတီငယ်များ လွှတ်တော်အတွင်း ကိုယ်စားပြုခွင့် ဆုံးရှုံးစေသည်။
၂။	လူနည်းစု ကိုယ်စားပြုခွင့်၊ အခွင့်အရေး ဆုံးရှုံးစေသည်။
၃။	အမျိုးသမီးများ ဝင်ရောက်ယှဉ်ပြိုင်ခွင့် အားနည်းသည်။
၄။	မဲဆန္ဒရှင်များ၏ ရွေးချယ်မှုအားလုံးကို အသိအမှတ်ပြုမှု မရှိပါ။
၅။	ဒေသတစ်ခု၊ မဲဆန္ဒနယ်တစ်ခုတွင် ပါတီတစ်ခုထဲကသာ ကြီးစိုးသွားတတ်သည်။
၆။	ရွေးချယ်နိုင်ခွင့် အားနည်းလာသောကြောင့် လူထုမှ ရွေးကောက်ပွဲကို စိတ်ဝင်စားမှု အားနည်းကာ မဲပေးမှု လျော့ကျနိုင်သည်။ 
၇။	လူထုထောက်ခံမှု လျော့ကျသော်လည်း လွှတ်တော်အတွင်း အာဏာစိုးမိုးမှုကို မထိခိုက်နိုင်သည်ကို တွေ့ရသည်။

            """)
          ],
        ));
  }
}
