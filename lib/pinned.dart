import 'package:flutter/material.dart';

class pinned extends StatefulWidget {
  @override
  _pinnedState createState() => _pinnedState();
}

class _pinnedState extends State<pinned> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        backgroundColor: Colors.grey[100],
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.blueAccent[400]),
          onPressed: () => Navigator.pop(context, false),
        ),
        actions: [],
        title: SizedBox(
          height: kToolbarHeight / 2,
          child: Text('Pinned Posts', style: TextStyle(color: Colors.grey[800]),)
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(

            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child: Image.asset('assets/flyers/FlyerIm8.jpg'),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child: Image.asset('assets/flyers/Flyer9.png'),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child: Image.asset('assets/flyers/Flyer10.jpg'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
