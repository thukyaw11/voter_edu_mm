import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:voter_education/workers/databrain.dart';
import 'package:voter_education/themes/theme.dart';

// ignore: must_be_immutable
class ContentListViewTwo extends StatelessWidget {
  final Data data;
  ContentListViewTwo({
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
            ဒီမိုကရေစီဟူသော အဓိပ္ပါယ်သည် ဂရိဝေါဟာရဖြစ်သော Demokratia မှ ဆင်းသက်လာပြီး ပြည်သူများက ရွေးချယ်တင်မြှောက်သော၊ ပြည်သူ့ကိုယ်စားလှယ်များဖြင့် အုပ်ချုပ်သော စနစ်ကို ဆိုလိုပါသည်။ ဒီမိုကရေစီစနစ် ကျင့်သုံးသောနိုင်ငံတွင် နိုင်ငံတော်၏ အာဏာကို ခက်မ (၃)ဖြာပိုင်းခြား၍ တစ်ခုနှင့် တစ်ခု အပြန်အလှန် ထိန်းကျောင်းသည့် စနစ်ဖြင့် နိုင်ငံတော်ကို စီမံအုပ်ချုပ်ပါသည်။
ခက်မ(၃) ဖြာမှာ-	အုပ်ချုပ်ရေးအာဏာ
			ဥပဒေပြုရေးအာဏာ
			တရားစီရင်ရေးအာဏာ တို့ဖြစ်သည်။
ထိုခက်မ (၃) ဖြာ ဖြစ်သော အာဏာ(၃) ရပ်ကို ပြည်သူများမှ ရွေးကောက်ပွဲများဖြင့် တိုက်ရိုက်ရွေးချယ်သော ကိုယ်စားလှယ်များမှ တာဝန်ယူခြင်း (သို့မဟုတ်) တဆင့်ခံ ရွေးချယ်ထားသော ကိုယ်စားလှယ်များမှ တာဝန်ယူ ဆောင်ရွက်ခြင်းဖြင့် နိုင်ငံတော်ကို စီမံခန့်ခွဲ အုပ်ချုပ်ပါသည်။

ဒီမိုကရေစီစနစ်တွင် အဓိကကျသော အချက် (၄) ချက်ကို ထုတ်နုတ်တင်ပြရမည်ဆိုလျှင် -
(က)	လွတ်လပ်၍ တရားမျှတသော ရွေးကောက်ပွဲများ ပြုလုပ်၍ ပြည်သူ့ကိုယ်စားလှယ်များကို ရွေးချယ် ပြီး နိုင်ငံတော်ကို အုပ်ချုပ်စေသော နိုင်ငံရေးစနစ်။
(ခ)	နိုင်ငံရေးနှင့် အခြားလုပ်ငန်းများတွင် နိုင်ငံသားများကို ပူးပေါင်းပါဝင် ဆောင်ရွက်ခွင့်ပြုသောစနစ်။
(ဂ)	နိုင်ငံသားများ၏ အခွင့်အရေးကို ဖော်ဆောင်ပေးပြီး လူ့အခွင့်အရေးကို လေးစားလိုက်နာသောစနစ်။
(ဃ)	နိုင်ငံသားအားလုံး၊ ကျား/မ၊ ဆင်းရဲ/ ချမ်းသာ၊ ဘာသာ၊ လူမျိုး မခွဲခြားဘဲ တရားဥပဒေ၏ ကာကွယ် စောင့်ရှောက်မှုကို တန်းတူရရှိစေသော စနစ်တို့ပင် ဖြစ်ပါသည်။ 
	ထို့အပြင် ဒီမိုကရေစိစနစ် တစ်ခုတွင်ရှိသော အခြေခံလက္ခဏာများမှာ -
(က)	အာဏာခွဲဝေထားခြင်း (အုပ်ချုပ်ရေး၊ ဥပဒေပြုရေး၊ တရားစီရင်ရေး)
(ခ)	ရွေးကောက်ပွဲ
(ဂ)	ပြည်သူ့ဆန္ဒခံယူပွဲများ
(ဃ)	နိုင်ငံရေးပါတီများ ဖြစ်ပါသည်။

(က) ဥပဒေပြုအာဏာ (Legislative Power)
	ပြည်သူများမှ ရွေးချယ်သော ကိုယ်စားလှယ်များပါဝင်သည့် လွှတ်တော်များသည် ဥပဒေပြုအာဏာ ကို ချုပ်ကိုင်ထားပြီး သတ်မှတ်ပြဋ္ဌာန်းထားသော ဖွဲ့စည်းပုံအခြေခံဥပဒေနှင့်အညီ ပြည်သူများ၏ လိုလား ချက်များ၊ ပြည်သူ့အကျိုးစီးပွားများကို ဥပဒေများပြဋ္ဌာန်းခြင်း၊ သက်ဆိုင်ရာ တာဝန်ရှိသူများ၏ ဆောင်ရွက် ချက်များကို စောင့်ကြည့်ထိန်းကျောင်းခြင်း စသည်တို့ကို ဆောင်ရွက်ကြပါသည်။ လိုအပ်ပါက ဖွဲ့စည်းပုံ အခြေခံဥပဒေကိုပါ ပြင်ဆင်ခြင်းကို ဆောင်ရွက်ကြပါသည်။ 
	ဥပဒေပြုရေးအာဏာတွင် လွှတ်တော်တစ်ရပ်စနစ်နှင့် လွှတ်တော်နှစ်ရပ်စနစ်ဟူ၍ ရှိပါသည်။ အခြေခံအားဖြင့် ပြည်ထောင်စုစနစ် ကျင့်သုံးသော နိုင်ငံများတွင် လွှတ်တော်နှစ်ရပ်စနစ်ကို ကျင့်သုံးပြီး အထက်လွှတ်တော်နှင့် အောက်လွှတ်တော်ဟူ၍ ခေါ်ဝေါ်သတ်မှတ် ကြပါသည်။ 
	အထက်လွှတ်တော်ကို ပြည်နယ်များမှ အရေအတွက် တူညီစွာ ရွေးချယ်သလို တစ်ချို့နိုင်ငံများတွင် အထက်လွှတ်တော်ကိုယ်စားလှယ်များ အားလုံး (သို့) သတ်မှတ်ဦးရေကို ခန့်အပ်ခြင်းမျိုးလည်း ရှိပါသည်။
	တစ်ပြည်ထောင်စနစ်တွင် အများအားဖြင့် လွှတ်တော်တစ်ရပ်စနစ်ကို ကျင့်သုံးသော်လည်း တစ်ချို့ တစ်ပြည်ထောင်စနစ် ကျင့်သုံးသော နိုင်ငံများတွင် လွှတ်တော်နှစ်ရပ်စနစ် ကျင့်သုံးသည်ကိုလည်း တွေ့ရှိရ ပါသည်။

(ခ) အုပ်ချုပ်ရေးအာဏာ (Executive Power)
	အုပ်ချုပ်ရေးအာဏာကို အစိုးရအဖွဲကမှ တာဝန်ယူဆောင်ရွက်ပါသည်။ အဓိကအားဖြင့် ဥပဒေပြု လွှတ်တော်များမှ ပြဋ္ဌာန်းဆုံးဖြတ်ပေးသော ဥပဒေများ၊ လုပ်ငန်းများကို လက်တွေ့အကောင်အထည်ဖော် ဆောင်ရွက်ရသော အဖွဲ့အစည်းဖြစ်သည်။ အခြေခံဥပဒေ၏ သတ်မှတ်ပြဋ္ဌာန်းချက်များကို လေးစားလိုက်နာ ပြီး ပြဋ္ဌာန်းထားသော နိုင်ငံသားအခွင့်အရေးများ၊ လူ့အခွင့်အရေးများကို ကာကွယ်ခြင်း၊ မြှင့်တင်ခြင်း၊ အကောင်အထည်ဖော် ဆောင်ရွက်ပေးခြင်းများ ပြုလုပ်ရပါသည်။ 
	အုပ်ချုပ်ရေးအာဏာကို ကိုင်စွဲဆောင်ရွက်သော အစိုးရများတွင် သမ္မတစနစ် အုပ်ချုပ်ရေးစနစ် (Presidential System) နှင့်ပါလီမန် (သို့) ဝန်ကြီးချုပ် အုပ်ချုပ်ရေးစနစ် (Parliamentary System) ဟူ၍ အခြေခံအားဖြင့် (၂) မျိုး တွေ့ရှိနိုင်ပါသည်။ 

	ပါလီမန်စနစ်တွင် အင်အားကြီးပါတီများမှ ပါလီမန်တွင်သာမက အစိုးရအဖွဲ့ကိုပါ လွှမ်းမိုးထား တတ်ပါသည်။ တခါတရံ ညွန့်ပေါင်းအစိုးရပုံစံ ဖွဲ့ခြင်းမျိုး ရှိသောကြောင့် ရွေးကောက်ပွဲ သက်တမ်းကာလ အတွင်း အစိုးရအဖွဲ့၏ တည်ငြိမ်မှု အားနည်းတတ်ပါသည်။ ပါလီမန်စနစ်တွင် ပါတီကြီးများမှ လွှမ်းမိုးထား တတ်သောကြောင့် ဥပဒေပြုခြင်းနှင့် အစိုးရ၏ လှုပ်ရှားဆောင်ရွက်မှုအပိုင်းတို့တွင် လျှင်မြန်မှု ရှိနေပါသည်။ ဥပဒေပြုအာဏာနှင့် အုပ်ချုပ်ရေးအာဏာ ပွတ်တိုက်မှု အားနည်းကာ အယုံအကြည်မရှိအဆို တင်သွင်းကာ အစိုးရကို ပြောင်းလဲတတ်ပါသည်။ 

(ဂ) တရားစီရင်ရေးအာဏာ (Judicial Power)
	တရားစီရင်ရေးအာဏာကို ချုပ်ကိုင်ထားသော နိုင်ငံတော် တရားသူကြီးများကို ပြည်သူမှ တိုက်ရိုက် ရွေးချယ်ပေးခြင်းမျိုး မဟုတ်ဘဲ အုပ်ချုပ်ရေးအာဏာမှ ဖွဲ့စည်းပုံအခြေခံဥပဒေတွင် သတ်မှတ်ပြဋ္ဌာန်းချက် များအတိုင်း ရွေးချယ်ပေးပြီး လွှတ်တော်မှ အတည်ပြုချက်ဖြင့် ခန့်အပ်လေ့ရှိပါသည်။ တရားသူကြီးများ၏ သက်တမ်းသည် လွှတ်တော်၊ သမ္မတ၊ ရွေးကောက်ပွဲသက်တမ်းများနှင့် မဆိုင်ဘဲ ဖွဲ့စည်းပုံအခြေခံဥပဒေတွင် သီးခြားပြဋ္ဌာန်းပေးပါသည်။ ဖွဲ့စည်းပုံအခြေခံဥပဒေတွင် ပြဋ္ဌာန်းထားသော သတ်မှတ်ချက်များမှအပ တရား စီရင်ရေးအာဏာကို ကိုင်စွဲသော တရားသူကြီးများကို အတည်ပြုခန့်အပ်ပြီးသည့် နောက်ပိုင်းတွင် မည်သူမျှ ဩဇာလွှမ်းမိုးခြင်း၊ ဖြုတ်ချခြင်းများ မပြုလုပ်နိုင်ပေး။ များသောအားဖြင့် တရားသူကြီးများ၏ သက်တမ်း သည် ခန့်အပ်ပြီးသည့် အချိန်မှစ၍ ကွယ်လွန်သည့်အချိန်အထိ သတ်မှတ်ကြပါသည်။ 
	တရားစီရင်ရေးအာဏာ၏ တာဝန်မှာ ဖွဲ့စည်းပုံအခြေခံဥပဒေ၏ ပြဋ္ဌာန်းချက်များအတိုင်း ဆောင်ရွက်မှု ရှိ/ မရှိ စောင့်ကြည့်ခြင်း၊ ဖွဲ့စည်းပုံအခြေခံဥပဒေဆိုင်ရာ အငြင်းပွားမှုများကို ဖြေရှင်းခြင်းနှင့် ပြဋ္ဌာန်းထားသည့် ဥပဒေအတိုင်း ပြည်သူတို့၏ အကျိုးစီးပွားကို ကာကွယ်စောင့်ရှောက်ပေးခြင်းတို့ကို ဆောင်ရွက်ပါသည်။ အဓိကအားဖြင့် အုပ်ချုပ်ရေးအာဏာပိုင်များ၏ ဆောင်ရွက်မှုများ၊ ဥပဒေပြု လွှတ်တော်၏ ဥပဒေပြုမှုများသည် ဖွဲ့စည်းပုံအခြေခံဥပဒေနှင့် ညီ/ မညီ စောင့်ကြည့်ထိန်းကျောင်းပေးခြင်း ကို နိုင်ငံသားများ၏ အကျိုးစီးပွားဘက်မှ အခြေခံ၍ ဆောင်ရွက်ကြပါသည်။

            """)
          ],
        ));
  }
}
