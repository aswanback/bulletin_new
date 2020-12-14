import 'package:flutter/material.dart';
import 'package:bulletin/LoginRegisterPage.dart';
import 'package:bulletin/AddPhoto.dart';
import 'package:bulletin/Home.dart';
import 'package:bulletin/Loading.dart';
import 'package:bulletin/Pinned.dart';
//import 'package:bulletin/Settings.dart';

void main() => runApp(MaterialApp(
    routes: {
      '/': (context) => Loading(),
      '/login': (context) => LoginRegisterPage(),
      '/home': (context) => Home(),
      '/pinned': (context) => Pinned(),
      '/addphoto': (context) => AddPhoto(),
    //  '/settings': (context) => Settings(),
     // '/tos': (context) => Tos(),
     // '/password': (context) => Password(),
      //'/reportbug': (context) => ReportBug(),
      //'/communities': (context) => Communities(),   add later


    }
  ));
