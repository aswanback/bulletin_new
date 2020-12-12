import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tos extends StatefulWidget {
  @override
  _TosState createState() => _TosState();
}

class _TosState extends State<Tos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        backgroundColor: Colors.grey[100],
        title: Text('Terms of Service', style: TextStyle(color: Colors.grey[800])),
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.grey[800]),
          onPressed:() => Navigator.pop(context, false),
        ),
      ),
      body: Center(
        child: Text('we literally own you'),
      ),

    );
  }
}
