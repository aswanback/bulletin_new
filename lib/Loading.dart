import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void delayTime() async {
    await Future.delayed(Duration(seconds: 1), () {
      Navigator.pushReplacementNamed(context, '/login');
    });
  }

  @override
  void initState() {
    super.initState();
    delayTime();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        Image(
          image: AssetImage('assets/bkgd.png'),
          fit: BoxFit.cover,
          height: double.infinity,
          width: double.infinity,
          alignment: Alignment.center,
        ),
        Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            //mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Center(
                child: FractionallySizedBox(
                  widthFactor: 0.5,
                  child: Image(
                    image: AssetImage('assets/whitename.png'),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              CupertinoActivityIndicator(
                animating: true,
              ),
            ]),
      ]),
    );
  }
}
