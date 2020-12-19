import 'package:flutter/material.dart';

class add_photo extends StatefulWidget {
  @override
  _add_photoState createState() => _add_photoState();
}

class _add_photoState extends State<add_photo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        backgroundColor: Colors.grey[100],
        title: Text('Post a flyer', style: TextStyle(color: Colors.grey[800])),
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.grey[800]),
          onPressed:() => Navigator.pop(context, false),
        ),
      ),
      body: Center(
        child: Text('add a photo biglow'),
      ),

    );
  }
}
