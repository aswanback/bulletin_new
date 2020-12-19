import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class terms_of_service extends StatefulWidget {
  @override
  _terms_of_serviceState createState() => _terms_of_serviceState();
}

class _terms_of_serviceState extends State<terms_of_service> {
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
