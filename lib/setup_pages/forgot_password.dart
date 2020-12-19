import 'package:flutter/material.dart';

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
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    fit: FlexFit.tight,
                    flex: 20,
                    child: SizedBox(height: 1.0),
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
                    fit: FlexFit.tight,
                    child: SizedBox(height: 1.0),
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
                          SizedBox(
                            height: 10.0,
                          ),
                        ],
                      ),
                    ),
                  ),//Email & Password
                  Flexible(
                    flex: 15,
                    fit: FlexFit.tight,
                    child: SizedBox(height: 1.0),
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
                              Navigator.pop(context);
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
                            Navigator.popUntil(context, ModalRoute.withName('/login'));
                          },
                          child: Text('Back to login',
                              style: TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.white,
                                  decoration: TextDecoration.underline)),
                        ),
                        //SizedBox(height: 5.0),

                      ],
                    ),
                  ),

                ],
              ),
            ),
          ),
        ],
    );
  }
}
