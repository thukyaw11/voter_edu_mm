import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:voter_education/workers/databrain.dart';
import 'package:voter_education/themes/theme.dart';

import '../workers/store_image.dart';

// ignore: must_be_immutable
class ContentListViewNine extends StatelessWidget {
  final Data data;
  ContentListViewNine({
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
            Text("""
         မဲဆန္ဒရှင်ပြည်သူများ အနေဖြင့် မိမိတို့ မဲဆန္ဒပြုခွင့်ရှိသော ရွေးကောက်ပွဲများတွင် ပါဝင်ဆန္ဒပြု၍ မိမိတို့ ကိုယ်စားလှယ်များ ကို ရွေးချယ်ခြင်းဖြင့် ပြည်သူ့ကိုယ်စားပြု အုပ်ချုပ်ရေးစနစ်အတွက် စစ်မှန်သော ပြည်သူ့ ကိုယ်စားလှယ်များ ပေါ်ထွက်လာစေရန် ရွေးကောက်ပွဲများတွင် ဝင်ရောက်မဲပေးခြင်းသည် ဒီမိုကရေစီစနစ်ကို ခိုင်မာ တောင့်တင်းအောင် ဆောင်ရွက်ခြင်းပင် ဖြစ်သည်။
ဆန္ဒမဲပေးပိုင်ခွင့်ရှိသူများ
မြန်မာနိုင်ငံတွင် မဲပေးပိုင်ခွင့်မရှိသူဟု သတ်မှတ်ထားသူမှအပ အသက် ၁၈ နှစ်ပြည့်ပြီးသော မဲဆန္ဒရှင်စာရင်းတွင် ပါဝင်သူ အားလုံးကို ခေါ်သည်။
အခန်း(၄) (လွှတ်တော်ရွေးကောက်ပွဲဥပဒေ)
၆။ အောက်ပါအရည်အချင်းများနှင့်ပြည့်စုံသူများသည် အမျိုးသား၊ အမျိုးသမီးမရွေး၊ ဘာသာမရွေး ရွေးကောက်ပွဲတွင် ဆန္ဒမဲပေးပိုင်ခွင့် ရှိသည် -
(က) ရွေးကောက်ပွဲစတင်ကျင်းပသည့်နေ့တွင် အသက်၁၈နှစ်ပြည့်ပြီး ဤဥပဒေပါ ပြဌာန်းချက်များနှင့်မဆန့်ကျင်သော နိုင်ငံသား၊ ဧည့်နိုင်ငံသား၊ နိုင်ငံသားပြုခွင့်ရသူ။
(ခ) သက်ဆိုင်ရာမဲဆန္ဒနယ်၏ မဲစာရင်းတွင်ပါဝင်သူ
ဆန္ဒမဲပေးခွင့်မရှိသူများ
    • သာသနာ့ဝန်ထမ်း
    • ထောင်ဒဏ်ကျခံနေရသူ
    • စိတ်ပေါ့သွပ်နေသည်ဟု သက်ဆိုင်ရာ ဥပဒေက   ပြဌာန်းထားသည့် အတိုင်း သတ်မှတ်ခြင်းခံရသူ
    • လူမွဲအဖြစ် ဆုံးဖြတ်ကြေညာခံထားရခြင်းမှ လွတ်မြောက်ခွင့် မရသေးသူ
    • ရွေးကောက်တင်မြှောက်ခြင်းဆိုင်ရာ ဥပဒေအရတားမြစ်ခြင်းခံရသူ
    • နိုင်ငံခြားသား သို့မဟုတ် နိုင်ငံခြားသားအဖြစ် ခံယူထားသူ

မဲဆန္ဒရှင်များ၏ရပိုင်ခွင့်များ
    • လျှို့ဝှက်ဆန္ဒမဲပေးပိုင်ခွင့် ။ 
    • မိမိကြိုက်နှစ်သက်သည့် ကိုယ်စားလှယ်ကို မဲပေးခွင့်။
    • ပုံမှန်ကျင်းပလေ့ရှိသည့် လွတ်လပ်ပြီး တရားမျှတသည့် ရွေးကောက်ပွဲတိုင်းတွင် မဲပေးခွင့်။
    • နိုင်ငံရေးပါတီတိုင်း၏အမြင် သဘောထား၊ မူဝါဒ၊ သတင်း အချက်အလက် နှင့် ကြေညာချက် များကို သိရှိပိုင်ခွင့်။
မဲဆန္ဒရှင်တစ်ဦးအနေဖြင့် ရွေးကောက်ပွဲတွင်ဆောင်ရွက်ရမည့်တာဝန်များ
၁။ ရွေးကောက်ပွဲမတိုင်မှီ
မဲစာရင်းစစ်ဆေးခြင်း
(က) နိုင်ငံသားတိုင်းအနေဖြင့် သက်ဆိုင်ရာရွေးကောက်ပွဲ ကော်မရှင်မှ မဲစာရင်းထုတ်ပြန်ကြေငြာသောအချိန်တွင် မိမိတို့၏အမည် ပါ/ မပါကို မဖြစ်မနေသွားရောက်စစ်ဆေးရမည်။
(ခ)     မဲစာရင်းတွင် အမည်မပါပါက ဖြည့်သွင်းပေးရန်တောင်းဆိုခြင်း၊
(ဂ)   မဲစာရင်းသွားရောက်စစ်ဆေးသူအနေဖြင့် မိမိ သို့မဟုတ် မိမိ မိသားစုဝင်တစ်ဦးသည် အသက်(၁၈) နှစ်ပြီး ဥပဒေပါ မဲပေးရမည့် အရည်အချင်းနှင့် ကိုက်ညီသော်လည် မဲစာရင်းတွင်မပါဝင်ပါက သက်ဆိုင်ရာ ရပ်ကွက်/ ကျေးရွာအုပ်စု ကော်မရှင်သို့ ရွေးကောက်ပွဲကော်မရှင်မှ သတ်မှတ်ထားသည့် ပုံစံ (၃) တောင်းဆိုလွှာဖြင့် မဲဆန္ဒရှင် 
စာရင်းတွင် ထပ်မံ ဖြည့်သွင်းပေးရန် တောင်းဆိုရမည်။

          """),
            Container(
              child: FlatButton(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                onPressed: () {
                  Navigator.of(context).pushNamed(
                    '/fullscreen',
                    arguments: ImageStore('images/contentNine/imageOne.jpeg'),
                  );
                },
                child: Image(
                  image: AssetImage('images/contentNine/imageOne.jpeg'),
                ),
              ),
            ),
            Text("""
            (ဃ) မဲဆန္ဒရှင်စာရင်းတွင် မိမိ၏ အမည်နှင့်အခြားကိုယ်ရေးအချက်အလက်များမှားယွင်းနေပါက ပြင်ဆင်လွှာပုံစံ     (၄-ဂ)ဖြင့် ပြင်ဆင်၍ သက်ဆိုင်ရာ ရပ်ကွက်/ ကျေးရွာ ကော်မရှင်အဖွဲ့ခွဲရုံးသို့ တင်ပြနိုင်သည်။
            """),
            Container(
              child: FlatButton(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                onPressed: () {
                  Navigator.of(context).pushNamed(
                    '/fullscreen',
                    arguments: ImageStore('images/contentNine/imageTwo.jpg'),
                  );
                },
                child: Image(
                  image: AssetImage('images/contentNine/imageTwo.jpg'),
                ),
              ),
            ),
            Text("""
            (င) မဲဆန္ဒရှင် စာရင်းတွင်မပါဝင်ရမည့် သူများပါဝင်နေခြင်း ( သေဆုံးသွားသောသူ၊ အသက် (၁၈) နှစ်မပြည့်သေးသူ၊ အခြားအရပ်ဒေသသို့ အပြီးအပိုင် ပြောင်းရွေ့သွားသူ၊ ပြစ်ဒဏ်ကျခံနေသောသူ၊ စိတ်မနှံ့သူ၊ နိုင်ငံခြားသား၊ဥပဒေအရ မဲမပေးရန် တားမြစ်ထားသူ) နှင့် အမည် ထပ်နေသူများတွေ့ရှိပါက မဲစာရင်းမှ ပယ်ဖျက်ပေးရန် သတ်မှတ်ထားသည့် ကန့်ကွက်လွှာ ပုံစံ (၄) ဖြင့်တောင်းဆိုပိုင်ခွင့်ရှိပါသည်။ သို့သော်လည်း ကန့်ကွက်လွှာတင်သွင်းသူသည် မိမိ မဲစာရင်းတွင် ပါဝင်နေသော သူများကိုသာ ကန့်ကွက်ပိုင်ခွင့်ရှိပါသည်။
            """),
            Container(
              child: FlatButton(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                onPressed: () {
                  Navigator.of(context).pushNamed(
                    '/fullscreen',
                    arguments: ImageStore('images/contentNine/imageThree.jpg'),
                  );
                },
                child: Image(
                  image: AssetImage('images/contentNine/imageThree.jpg'),
                ),
              ),
            ),
            Text("""
                • ရွေးကောက်ပွဲ မတိုင်ခင် (၇) ရက် အလိုတွင် နောက်ဆုံး အတည်ပြု မဲဆန္ဒရှင်စာရင်းကြေငြာပါမည်။
    • ပုံစံ (၃) တောင်းဆိုလွှာဖြင့်လျှောက်ထားသူများ မပါပါက ပြန်လည် လျှောက်ထားနိုင်သည်။
    • မဲဆန္ဒရှင်အမည်များ အစုအဝေးလိုက် ကျန်နေခဲ့ပါက ရွေးကောက်ပွဲ မကျင်းပမှီ (၇) ရက်ထက် နောက်မကျစေဘဲ နေပြည်တော်/ကိုယ်ပိုင် အုပ်ချုပ်ခွင့်ရ တိုင်း/ဒေသ/ခရိုင် ကော်မရှင်အဖွဲ့ခွဲ၏ ခွင့်ပြုချက် ဖြင့် နောက်ဆက်တွဲ မဲစာရင်းတွင် ထည့်သွင်းရမည်။  (ရ-န ၁၄ (က))
ရက်ပေါင်း(၉၀)ဖြင့် မဲပေးလိုသူများ
အနဲဆုံးရက်ပေါင်း(၉၀)ထက်မနည်း မူလမဲဆန္ဒနယ်ပြင်ပရောက် မဲဆန္ဒရှင်များအနေဖြင့် ရောက်ရှိမဲဆန္ဒနယ်တွင် မဲပေးလိုပါက ပုံစံ(၃-က)ဖြင့် လျှောက်ထားရမည်။
ပုံစံ (၃-က) လျှောက်ထားခြင်းကို ပြည်ထောင်စုရွေးကောက်ပွဲကော်မရှင် မှ  အမိန့်ကြေငြာချက် အမှတ် (၃၄/၂၀၁၅) ဖြင့် ၂၀၁၅ ခုနှစ် အောက်တိုဘာလ (၁၀) နေ့ နောက်ဆုံးထား လျှောက်ထားရမည်။
(၂၀၁၅ခုနှစ် September လ  တွင် ပြည်ထောင်စုရွေးကောက်ပွဲ ကော်မရှင်မှ မဲဆန္ဒရှင်စာရင်းထပ်မံ ၍ (၁၄) ရက်ကြေငြာပေးမည်။
(ရပ်ကွက်/ကျေးရွာရွေးကောက်ပွဲ ကော်မရှင်အဖွဲ့ခွဲရုံးများတွင် သက်ဆိုင်ရာပုံစံများကိုတောင်းယူနိုင်ပါသည်။)

            """),
            Container(
              child: FlatButton(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                onPressed: () {
                  Navigator.of(context).pushNamed(
                    '/fullscreen',
                    arguments: ImageStore('images/contentNine/imageFour.jpg'),
                  );
                },
                child: Image(
                  image: AssetImage('images/contentNine/imageFour.jpg'),
                ),
              ),
            ),
            Text("""
            ၂။ ဆန္ဒမဲပေးခြင်း
	
၁။ ရွေးကောက်ပွဲကျင်းပသည့်နေ့တွင် ကိုယ်တိုင်မဲပေးခြင်း
    • မိမိမဲပေးရမည့် မံရုံသို့ သတ်မှတ်ထားသော အချိန်အတွင်းအရောက်သွားပါ။
    • မဲပေးခွင့် အထောက်အထားယူသွားပါ။
    • မဲရုံထဲသို့တန်းစီစနစ်ဖြင့်ဝင်ပါ။
    • အထောက်အထားပြ၍ မဲလက်မှတ်ထုတ်ယူပါ။
    • မဲလက်မှတ်တွင် မဲရုံမှူးလက်မှတ်၊ ကော်မရှင်အမှတ်တံဆိပ် ပါ/မပါစစ်ဆေးပါ။ မပါပါကမဲရုံ တာဝန်ရှိသူကို ပြသ၍ မဲလက်မှတ် ပြန်လဲပါ။
    • လျှို့ဝှက်မဲပေးခန်းတွင် နှစ်သက်ရာ ကိုယ်စားလောင်း၏ အမည်ဘေး လေးထောင့်ကွက်တွင် အမှန်ခြစ် တံဆိပ်တုံး ရိုက်နှိပ်ပါ။
    • မဲကို အများမမြင်နိုင်အောင် ခေါက်၍ သက်ဆိုင်ရာမဲပုံးတွင် ထည့်ပါ။ 
    • တစ်ဦးလျှင် ဆန္ဒမဲ စာရွက် ၃ ရွက်စီရမည်။ (၃) ကြိမ် မဲပေးရမည်။ (မိမိသည်တိုင်းရင်းသားလူမျိုးတစ်ဦးဖြစ်ပြီး မိမိ တိုင်းရင်းသားကိုယ်စားလှယ်လောင်း အမည်ပါလျှင် (၄) ကြိမ် မဲပေးရပါမည်။
    • မိမိဆန္ဒမဲ လက်မှတ်ကို မဲပုံးထဲသို့ ထည့်လျှင် ကိုယ်တိုင်သာ ထည့်ရမည်။ မည်သူကိုမျှ ကိုယ်စားမထည့် ခိုင်းရ။
    • မဲပေးပြီးပါက အထွက်ပေါက်တွင် မဲပေးကြီးကြောင်းသိရှိနိုင်ရန် လက်သန်းတွင် မှင်တို့ခံရမည်။
မိမိဆန္ဒပြုသောအလွန်တန်ဘိုးရှိသော ဆန္ဒမဲကို ပယ်မဲမဖြစ်အောင် ဆောင်ရွက်ရန် အလွန်အရေးကြီးပါသည်။
မဲလက်မှတ်နမူနာ
(၂၀၁၅ ရွေးကောက်ပွဲ မဲလက်မှတ်ကို နမူနာယူထားသည်)
            """),
            Container(
              child: FlatButton(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                onPressed: () {
                  Navigator.of(context).pushNamed(
                    '/fullscreen',
                    arguments: ImageStore('images/contentNine/imageFour.jpg'),
                  );
                },
                child: Image(
                  image: AssetImage('images/contentNine/imageFour.jpg'),
                ),
              ),
            ),
            Container(
              child: FlatButton(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                onPressed: () {
                  Navigator.of(context).pushNamed(
                    '/fullscreen',
                    arguments: ImageStore('images/contentNine/imageFive.png'),
                  );
                },
                child: Image(
                  image: AssetImage('images/contentNine/imageFive.png'),
                ),
              ),
            ),
            Container(
              child: FlatButton(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                onPressed: () {
                  Navigator.of(context).pushNamed(
                    '/fullscreen',
                    arguments: ImageStore('images/contentNine/imageSix.png'),
                  );
                },
                child: Image(
                  image: AssetImage('images/contentNine/imageSix.png'),
                ),
              ),
            ),
            Container(
              child: FlatButton(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                onPressed: () {
                  Navigator.of(context).pushNamed(
                    '/fullscreen',
                    arguments: ImageStore('images/contentNine/imageSeven.png'),
                  );
                },
                child: Image(
                  image: AssetImage('images/contentNine/imageSeven.png'),
                ),
              ),
            ),
            Text("""
            (၂၀၁၅ ရွေးကောက်ပွဲ သတ်မှတ်ချက်ကို နမူနာယူထားသည်)

၂။ကြိုတင်မဲပေးခြင်း
ကြိုတင်မဲပေးခြင်း ပုံစံ (၂) မျိုးရှိပါသည်။
(က) မြို့နယ်ကြိုတင်မဲ
(ခ) ရပ်ကွက်ကြိုတင်မဲ တို့ဖြစ်ပါသည်။
ကြိုတင်ဆန္ဒမဲပေးခြင်းကို ရွေးကောက်ပွဲဥပဒေပုဒ်မ ၄၅(က)၊၄၇(က)တွင် အောက်ပါအတိုင်းပြဋ္ဌာန်းထားပါသည်။
(က) မြို့နယ်ကြိုတင်မဲ
အောက်ပါမဲဆန္ဒရှင်များသည် သက်ဆိုင်ရာမြို့နယ်ကော်မရှင်အဖွဲ့ခွဲတွင် ကြိုတင်  ဆန္ဒမဲပေးနိုင်သည်။
(ကက) မဲဆန္ဒနယ်ပြင်ပရောက်
          ကျောင်းသားများ၊ သင်တန်းသားများ၊ အခြားမဲဆန္ဒရှင်များ (ဝန်ထမ်းများ)၊ အချုပ်ခံနေရသူများ၊ ဆေးရုံတက်ရောက် နေသောအတွင်းလူနာများ။ (မဲစာရင်းပုံစံ ၁-၁)
တပ်မတော်သားများနှင့် အိမ်ထောင်စုဝင်များ။ (မဲစာရင်းပုံစံ ၁-၂)
(ခခ) နိုင်ငံပြင်ပရောက်
      သံအဖွဲ့ဝင်/အိမ်ထောင်စုဝင်များ၊ ပညာတော်သင်/ အိမ်ထောင်စုဝင်များ၊ ကိုယ်စားလှယ်အဖွဲ့ဝင်/ အိမ်ထောင်စုဝင်များ၊ အစိုးရ၏ ခွင့်ပြုချက်ဖြင့် နိုင်ငံပြင်ပသို့ရောက်နေသူများ/ အိမ်ထောင်စုဝင်များ။ (မဲစာရင်းပုံစံ ၁-၃)
မြို့နယ် ကြိုတင်မဲသည် မဲရုံ ပိတ်ချိန် တွင် မြို့နယ်ကော်မရှင်ရုံးသို့ နောက်ဆုံး ထား၍ ရောက်ရှိရမည်။  (ညနေ ၄း၀၀ နာရီ)
မြို့နယ် ကြိုတင်မဲသည် အမှန်ခြစ်၍ မဲပေးရမည်။ (အမိန့်ကြော်ငြာစာ အမှတ် ၄/၂၀၁၅ ) ၂၀၁၅ ခုနှစ် ဇွန်လ ၂၅ ရက်

ဌာနဆိုင်ရာဝန်ထမ်းများအတွက်ကြိုတင်မဲတောင်းခံခြင်း
    • သက်ဆိုင်ရာဌာန အကြီးအမှူးသည် ဌာနတည်ရှိရာ မြို့နယ် ကော်မရှင်အဖွဲ့ခွဲ ထံမှ ပုံစံ (၁၅) တောင်းယူ၍ ဖြန့်ဝေပေးရမည်။ 
    • ကြိုတင်မဲပေးခွင့်ရှိသူများသည် ပုံစံ(၁၅) ကိုဖြည့်၍ အကြီးအကဲထံပြန်ပေးရမည်။
    • အကြီးအကဲသည် စစ်ဆေး၍ သက်ဆိုင်ရာမြို့နယ် ကို ပို့ပေးမည်။
    • မြို့နယ်မှ သက်ဆိုင်ရာရပ်ကွက် ကိုပို့ပေးရမည်။
    • ရပ်ကွက်မှ မဲဆန္ဒရှင်စာရင်း ပုံစံ ၁-၁ တွင် ဖြည့်၍ ရပ်/ကျေး ကော်မရှင်အဖွဲ့ခွဲရုံး  တွင်ကပ်ထားရမည်။
            """),
            Container(
              child: FlatButton(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                onPressed: () {
                  Navigator.of(context).pushNamed(
                    '/fullscreen',
                    arguments: ImageStore('images/contentNine/imageEight.png'),
                  );
                },
                child: Image(
                  image: AssetImage('images/contentNine/imageEight.png'),
                ),
              ),
            ),
            Text("""
            (ခ) ရပ်ကွက်ကြိုတင်မဲ
အောက်ပါ မဲဆန္ဒရှင်များသည် သက်ဆိုင်ရာရပ်ကွက်/ကျေးရွာအုပ်စု ကော်မရှင် အဖွဲ့ခွဲတွင် ကြိုတင်ဆန္ဒမဲပေးနိုင်သည်။
(ကက) ရွေးကောက်ပွဲကျင်းပသည့်နေ့တွင် မဲဆန္ဒနယ်ကျော်လွန်၍ ခရီးဝေးသွားလာရန်ရှိသူ။
(ခခ)ရွေးကောက်ပွဲကျင်းပသည့်နေ့တွင်မိမိအရပ်၌ရှိနေသော်လည်းမဲရုံသို့ ကိုယ်တိုင် မလာရောက်နိုင်သူ။
အနာကြီးရောဂါစွဲကပ်နေသူ၊ ရောဂါဝေဒနာပြင်းထန်စွာခံစားနေရသူ၊ အသက်အရွယ်ကြီးရင့်သူ၊ မီးဖွားနေသူ၊ အချုပ်စခန်း၊ အကျဉ်းစခန်းတွင်အချုပ်ခံနေရသူ၊ ဆေးရုံသို့တက်ရောက်နေသောအတွင်းလူနာ၊ မဲစာရင်းပါဒေသမှ ကျော်လွန်၍ ယာယီ တာဝန်များထမ်းဆောင်ရသည့် နိုင်ငံ့ဝန်ထမ်း၊တပ်မတော်သား၊ရဲတပ်ဖွဲ့ဝင်များ။
(ဂဂ) ရွေးကောက်ပွဲပါဥပဒေ ပုဒ်မ ၄၆ အရ မဲဆန္ဒနယ်ပြင်ပသို့ရောက်ရှိနေကြသော မဲစာရင်းပါ အခြားမဲဆန္ဒရှင်များက မိမိတို့၏နေရပ်သို့ ပြန်လာပြီး  ကြိုတင်ဆန္ဒမဲပေးလိုသူ။  
    • ရပ်ကွက်ကြိုတင်မဲသည် မဲရုံမဖွင့်မှီ မဲရုံသို့ရောက်ရှိရမည်။ (နံနက် ၆.၀၀ နာရီ)
    • ရပ်ကွက်ကြိုတင်မဲသည် တံဆိပ်တုံးဖြင့် ရိုက်နှိပ်၍ မဲပေးရမည်။ 
    • သတ်မှတ်ချိန်အတွင်းမရောက်ရှိသောမဲ လက်မှတ်များအားပယ်မဲ အဖြစ်သတ်မှတ် ရမည်။
ရွေးကောက်ပွဲဥပဒေအရမဲဆန္ဒရှင်များသိသင့်သည့်အချက်များ
မိမိမဲတစ်ပြားသည်အလွန်အရေးပါသည်။
လျှို့ဝှက်မဲပေးခြင်းဖြစ်၍မည်သူ့ကိုမဲပေးခဲ့ကြောင်းကိုမည်သူမျှ မသိနိုင်ပါ။
လွတ်လပ်စွာမဲပေးနိုင်သည်။ မည်သူကမျှ ခြိမ်းခြောက်ခြင်း၊  အကြမ်းဖက်ခြင်း၊ လာဘ်ပေးလာဘ်ယူပြုလုပ်ခြင်း၊ မလျှော် သြဇာ သုံးခြင်း၊ လိမ်လည်ခြင်း၊ ဖြာယောင်းသွေးဆောင်ခြင်းမပြုနိုင်ပါ။ ပြုလုပ်လာလျှင် တိုင်ကြား နိုင်ပါသည်။
မည်သူအားမဲပေးခဲ့ကြောင်းကိုမည်သူကမျှ မေးမြန်းခွင့်မရှိပါ၊ မေးမြန်းလျှင်လည်း ပြောဆိုရန်တာဝန်မရှိပါ။ 
ရွေးကောက်ပွဲပြစ်မှုများကို ကျူးလွန်မိခြင်းမရှိစေရန် မဲဆန္ဒရှင်များ လိုက်နာရမည့် အချက်များ
    • လာဘ်ပေးလာဘ်ယူမှုကိုရှောင်ရှားရန်၊ အကြမ်းဖက်ခြင်း၊ ခြိမ်းခြောက်ခြင်း၊ မလျော်သြဇာသုံးခြင်း၊ လိမ်လည် လှည့်ဖြားခြင်း မပြုရန်၊
    • ဆန္ဒမဲပေးခြင်း၊ ပျက်ပြားရန် ရွေးကောက်ပွဲပျက်ပြားရန် လှုံ့ဆော်ခြင်း၊ ပြောဆိုခြင်းမပြုရန်၊
    • ကော်မရှင်မှ ထုတ်ပြန်ထားသောအကြောင်းကြားစာ၊ စာရွက်စာတမ်းများကိုဖျက်စီးခြင်းမပြုလုပ်ရန်၊
    • မိမိ၏ ဆန္ဒမဲလက်မှတ်ကိုအခြားသူတစ်ဦးအားပေးခြင်းမပြုရန်။
    • မိမိ၏ ဆန္ဒမဲလက်မှတ်ကိုမဲရုံအပြင်သို့  ယူဆောင်သွားခြင်းမပြုရန်။
    • မဲပုံးအတွင်းသို့ အခြားပစ္စည်းတစ်ခုခုကိုထည့်သွင်းခြင်းမပြုရန်။
    • မဲပုံးများကိုအခွင့်မရှိဘဲဖွင့်လှစ်ခြင်း၊ ဆန္ဒမဲလက်မှတ်များကိုဖျက်စီးခြင်းမပြုရန်။
    • ရွေးကောက်ပွဲတစ်ခုတွင် မဲဆန္ဒနယ်တစ်နယ်အတွက် တစ်ကြိမ်ထက်ပို၍ ဆန္ဒမဲမပေးရန်။
    • သူတစ်ပါးအယောင်ဆောင်၍ ဆန္ဒမဲမပေးရန်။
    • ကိုယ်စားပြု ဆန္ဒမဲမပေးရန်။
    • မဲရုံအတွင်းသို့ ဝင်ခွင့်မရှိဘဲ ဝင်ထွက်ခြင်းမပြုရန်။
    • အတုပြုလုပ်ထားသောမဲလက်မှတ်ကိုမဲပုံးထဲသို့ ထည့်သွင်းခြင်းမပြုရန်။
    • မဲပေးသူတစ်ဦးအားမဲမပေးရန်အတွက် နှောင့်ယှက်ခြင်မပြုရန်။
    • ရွေးကောက်ပွဲကျင်းပသည့်နေ့၌ မဲပေးသူများစိတ်ငြိုငြင်မှု သို့မဟုတ် မဲရုံတာဝန်ကျများ အနှောင့်အယှက် ဖြစ်စေမှု၊ မဖွယ်မရာသောအမှုများမပြုရန်။
    • မဲပေးနေချိန် မဲရုံအတွင်း၌ မဲရုံးမှူး၏ တာဝန်ဝတ္တရားအရ ဆောင်ရွက်မှုနှင့် စည်းကမ်းတစ်ကျ ညွှန်ကြားမှုတို့ကိုလိုက်နာရန်။
    • ငြိမ်ဝပ်ပိပြားရေးနှင့် ခိုက်ရန်ဖြစ်ပွားခြင်းမဖြစ်စေရန်အတွက် ကာကွယ်ထိန်းသိမ်းရန်။
            """),
          ],
        ));
  }
}
