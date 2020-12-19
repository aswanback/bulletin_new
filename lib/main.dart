
import 'package:bulletin/setup_pages/login.dart';
import 'package:bulletin/settings_pages/change_password.dart';
import 'package:bulletin/setup_pages/forgot_password.dart';
import 'package:bulletin/setup_pages/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:bulletin/add_photo.dart';
import 'package:bulletin/home.dart';
import 'package:bulletin/setup_pages/loading.dart';
import 'package:bulletin/pinned.dart';
import 'package:bulletin/settings_pages/report_bug.dart';
import 'package:bulletin/settings_pages/settings.dart';
import 'package:bulletin/settings_pages/terms_of_service.dart';
import 'package:bulletin/settings_pages/contact.dart';
import 'package:page_transition/page_transition.dart';
//import 'package:firebase_core/firebase_core.dart';


//Todo: add splash screen

void main() {
  runApp(MaterialApp(
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
  }));
}
