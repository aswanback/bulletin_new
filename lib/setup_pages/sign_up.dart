import 'package:flutter/material.dart';
import 'package:Bulletin/functions.dart';

class sign_up extends StatefulWidget {
  @override
  _sign_upState createState() => _sign_upState();
}

class _sign_upState extends State<sign_up> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Image(
          image: AssetImage('assets/bkgd.png'),
          fit: BoxFit.cover,
          height: double.infinity,
          width: double.infinity,
          alignment: Alignment.center,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    fit: FlexFit.loose,
                    flex: 20,
                    child: SizedBox(height: screenHeight(context,dividedBy: 6)),
                  ), //Spacer
                  Flexible(
                    fit: FlexFit.loose,
                    flex: 20,
                    child: FractionallySizedBox(
                      widthFactor: 0.6,
                      child: Image.asset(
                        'assets/whitename.png',
                        alignment: Alignment.center,
                      ),
                    ),
                  ), //Logo
                  Flexible(
                    flex: 20,
                    fit: FlexFit.loose,
                    child: SizedBox(height: screenHeight(context,dividedBy: 8.5)),
                  ),
                  Flexible(
                    //Email + Password
                    flex: 40,
                    child: FractionallySizedBox(
                      widthFactor: 0.9,
                      child: Column(
                        children: [
                          Form(
                            child: SingleChildScrollView(
                              child: TextFormField(
                                decoration: InputDecoration(
                                  hintText: 'Email',
                                  hintStyle: TextStyle(
                                      color: Colors.grey[200],
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 0.5),
                                  filled: true,
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.grey[100], width: 0.8)),
                                ),
                                autocorrect: true,
                                enableSuggestions: true,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Form(
                            child: SingleChildScrollView(
                              child: TextFormField(
                                decoration: InputDecoration(
                                  hintText: 'Password',
                                  hintStyle: TextStyle(
                                      color: Colors.grey[100],
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 0.5),
                                  filled: true,
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.grey[100], width: 0.8)),
                                ),
                                autocorrect: true,
                                enableSuggestions: true,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Form(
                            child: SingleChildScrollView(
                              child: TextFormField(
                                decoration: InputDecoration(
                                  hintText: 'Re-enter Password',
                                  hintStyle: TextStyle(
                                      color: Colors.grey[100],
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 0.5),
                                  filled: true,
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.grey[100], width: 0.8)),
                                ),
                                autocorrect: true,
                                enableSuggestions: true,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ), //Email & Password
                  Flexible(
                    flex: 20,
                    fit: FlexFit.loose,
                    child: SizedBox(height: screenHeight(context,dividedBy: 5.5)),
                  ),
                  Flexible(
                    //SIGN UP
                    flex: 20,
                    fit: FlexFit.loose,
                    child: Column(
                      children: [
                        Opacity(
                          opacity: 0.9,
                          child: WillPopScope(
                            onWillPop: () async => false,
                            child: FlatButton(
                              onPressed: () {
                                Navigator.pushNamedAndRemoveUntil(context, '/home', ModalRoute.withName('/'));
                              },
                              child: Text('SIGN UP',
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      color: Colors.lightBlueAccent)),
                              padding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 80),
                              color: Colors.grey[100],
                              shape: RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(20.0),
                                  side: BorderSide(
                                      color: Colors.grey[100], width: 1.0)),
                            ), //Login
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamedAndRemoveUntil(context, '/login', ModalRoute.withName('/'));
                          },
                          child: Text('Back to login',
                              style: TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.grey[100],
                                  decoration: TextDecoration.underline)),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
