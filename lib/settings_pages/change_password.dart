import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class change_password extends StatefulWidget {
  @override
  _change_passwordState createState() => _change_passwordState();
}

class _change_passwordState extends State<change_password> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        backgroundColor: Colors.grey[100],
        title: Text('Change password', style: TextStyle(color: Colors.grey[800])),
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.grey[800]),
          onPressed:() => Navigator.pop(context, false),
        ),
      ),
      body: Center(
        child: Text("jk lol you're stuck with Password1"),
      ),

    );
  }
}
