import 'package:flutter/material.dart';

import 'view/about_us.dart';
import 'view/content_listing.dart';
import 'content/content_list_view_one.dart';
import 'content/content_list_view_two.dart';
import 'content/content_list_view_three.dart';
import 'content/content_list_view_four.dart';
import 'content/content_list_view_five.dart';
import 'content/content_list_view_six.dart';
import 'content/content_list_view_seven.dart';
import 'content/content_list_view_eight.dart';
import 'content/content_list_view_nine.dart';
import 'content/content_list_view_ten.dart';
import 'content/content_list_view_eleven.dart';

import 'widgets/fullscreenImage.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    print(args);
    switch (settings.name) {
      case '/aboutus':
        return MaterialPageRoute(
          builder: (_) => AboutUsPage(),
        );
      case '/content_listing':
        return MaterialPageRoute(builder: (_) => Content_Listing());
      case '/content_list_view_eight':
        return MaterialPageRoute(
            builder: (_) => ContentListViewEight(data: args));
      case '/fullscreen':
        return MaterialPageRoute(builder: (_) => FullscreenImage(data: args));
      case '/content_list_view_one':
        return MaterialPageRoute(
          builder: (_) => ContentListViewOne(data: args),
        );
      case '/content_list_view_two':
        return MaterialPageRoute(
            builder: (_) => ContentListViewTwo(
                  data: args,
                ));
      case '/content_list_view_three':
        return MaterialPageRoute(
            builder: (_) => ContentListViewThree(
                  data: args,
                ));
      case '/content_list_view_four':
        return MaterialPageRoute(
            builder: (_) => ContentListViewFour(data: args));
      case '/content_list_view_five':
        return MaterialPageRoute(
            builder: (_) => ContentListViewFive(data: args));
      case '/content_list_view_six':
        return MaterialPageRoute(
            builder: (_) => ContentListViewSix(data: args));
      case '/content_list_view_seven':
        return MaterialPageRoute(
            builder: (_) => ContentListViewSeven(data: args));
      case '/content_list_view_nine':
        return MaterialPageRoute(
            builder: (_) => ContentListViewNine(data: args));
      case '/content_list_view_ten':
        return MaterialPageRoute(
            builder: (_) => ContentListViewTen(data: args));
      case '/content_list_view_eleven':
        return MaterialPageRoute(
            builder: (_) => ContentListViewEleven(data: args));

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: (Text('error')),
        ),
        body: Center(
          child: Text('error'),
        ),
      );
    });
  }
}
