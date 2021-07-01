import 'package:flutter/material.dart';
import 'package:Bulletin/functions.dart';

class forgot_password extends StatefulWidget {
  @override
  _forgot_passwordState createState() => _forgot_passwordState();
}

class _forgot_passwordState extends State<forgot_password> {
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
            resizeToAvoidBottomInset: false,
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
                      child: SizedBox(height: screenHeight(context,dividedBy: 5)),
                    ),
                    Flexible(
                      //Email + Password
                      flex: 40,
                      child: FractionallySizedBox(
                        widthFactor: 0.9,
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(10,0,0,10.0),
                              child: Text(
                                'Enter the email associated with your account',
                                style: TextStyle(
                                    color: Colors.grey[700],
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.normal,
                                    letterSpacing: 0.5),
                              ),
                            ),
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
                          ],
                        ),
                      ),
                    ),//Email & Password
                    Flexible(
                      flex: 20,
                      fit: FlexFit.loose,
                      child: SizedBox(height: screenHeight(context,dividedBy: 4.5)),
                    ),
                    Flexible(   //SIGN IN
                      flex: 20,
                      fit: FlexFit.loose,
                      child: Column(
                        children: [
                          Opacity(
                            opacity: 0.9,
                            child: FlatButton(
                              onPressed: () {
                                //Todo: Do some kind of confirmation here

                              },
                              child: Text('Send Reset Email',
                                  style: TextStyle(
                                      fontSize: 16.0, color: Colors.lightBlueAccent)),
                              padding:
                              EdgeInsets.symmetric(vertical: 10, horizontal: 80),
                              color: Colors.grey[100],
                              shape: RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(20.0),
                                  side: BorderSide(
                                      color: Colors.grey[100], width: 1.0)),
                            ), //Login
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pushNamedAndRemoveUntil(context, '/login', ModalRoute.withName('/'));
                            },
                            child: Text('Back to login',
                                style: TextStyle(
                                    fontSize: 14.0,
                                    color: Colors.white,
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
