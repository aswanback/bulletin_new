import 'package:Bulletin/setup_pages/login.dart';
import 'package:Bulletin/settings_pages/change_password.dart';
import 'package:Bulletin/setup_pages/forgot_password.dart';
import 'package:Bulletin/setup_pages/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:Bulletin/add_photo.dart';
import 'package:Bulletin/home.dart';
import 'package:Bulletin/setup_pages/loading.dart';
import 'package:Bulletin/pinned.dart';
import 'package:Bulletin/settings_pages/report_bug.dart';
import 'package:Bulletin/settings_pages/settings.dart';
import 'package:Bulletin/settings_pages/terms_of_service.dart';
import 'package:Bulletin/settings_pages/contact.dart';
import 'package:provider/provider.dart';
//import 'package:firebase_core/firebase_core.dart';

//Global Variables work here
var num_flyers_per_page = 1; //Todo: fetch from firebase
var num_flyers_per_page_pinned = 1; //Todo: fetch from firebase


//Todo: add splash screen
//Todo: Search bar https://dev.to/luizeduardotj/search-bar-in-flutter-33e1

void main() => runApp(App());

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  Map<String, int> data = {
    'num_columns': 12,
    'useless_data': 13,
  };

  @override
  Widget build(BuildContext context) {
    return Provider<Map>(
      create: (context) => data,
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          routes: {
            '/': (context) => loading(),
            '/login': (context) => login(),
            '/home': (context) => home(),
            '/pinned': (context) => pinned(),
            '/addphoto': (context) => add_photo(),
            '/settings': (context) => settings(),
            '/tos': (context) => terms_of_service(),
            '/password': (context) => change_password(),
            '/reportbug': (context) => report_bug(),
            '/contact': (context) => contact(),
            '/forgot_password': (context) => forgot_password(),
            '/sign_up': (context) => sign_up(),
            //'/communities': (context) => Communities(),   add later
          }),
    );
  }

}