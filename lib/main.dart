import 'package:flutter/material.dart';

import 'package:bulletin/LoginRegisterPage.dart';
import 'package:bulletin/Password.dart';
import 'package:bulletin/AddPhoto.dart';
import 'package:bulletin/Home.dart';
import 'package:bulletin/Loading.dart';
import 'package:bulletin/Pinned.dart';
import 'package:bulletin/ReportBug.dart';
import 'package:bulletin/Settings.dart';
import 'package:bulletin/Tos.dart';
import 'package:bulletin/ContactUs.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth_oauth/firebase_auth_oauth.dart';
import 'package:firebase_database/firebase_database.dart';
//import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';


//IM FUCKING GAY


void main() => runApp(MaterialApp(
    routes: {
      '/': (context) => Loading(),
      '/login': (context) => LoginRegisterPage(),
      '/home': (context) => Home(),
      '/pinned': (context) => Pinned(),
      '/addphoto': (context) => AddPhoto(),
      '/settings': (context) => Settings(),
      '/tos': (context) => Tos(),
      '/password': (context) => Password(),
      '/reportbug': (context) => ReportBug(),
      '/contact': (context) => Contact(),
      //'/communities': (context) => Communities(),   add later


    }
  ));
