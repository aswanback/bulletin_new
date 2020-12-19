import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class report_bug extends StatefulWidget {
  @override
  _report_bugState createState() => _report_bugState();
}

class _report_bugState extends State<report_bug> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        backgroundColor: Colors.grey[100],
        title: Text('Help', style: TextStyle(color: Colors.grey[800])),
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.grey[800]),
          onPressed:() => Navigator.pop(context, false),
        ),
      ),
      body: Center(
        child: Text('we ave bugs go away'),
      ),

    );
  }
}
