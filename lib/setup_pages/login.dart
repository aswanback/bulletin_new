import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:Bulletin/functions.dart';




class login extends StatefulWidget {
  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {

  @override
  bool newValue;
  bool _isChecked = true;

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
                      flex: 1,
                      fit: FlexFit.loose,
                      child: SizedBox(height: screenHeight(context,dividedBy:6)),
                      ),
                    //Spcaer
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
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Checkbox(
                                  checkColor: Colors.grey[100],
                                  activeColor: Colors.black87,
                                  value: _isChecked,
                                  onChanged: (bool value) {
                                    setState(() {
                                      _isChecked = value;
                                    });
                                  },
                                ),
                                Text(
                                  'Keep me signed in',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontSize: 14.0, color: Colors.black87),
                                ),
                                Flexible(
                                  child: FractionallySizedBox(
                                    widthFactor: MediaQuery.of(context).size.width * 0.2,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 0, 5, 0),
                                  child: TextButton(
                                    onPressed: () {

                                      Navigator.pushNamed(context, '/forgot_password');
                                    },
                                    child: Text(
                                      'Forgot password?',
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                          fontSize: 14.0, color: Colors.grey[100]),
                                    ),
                                  ),
                                ),
                              ],
                            ), //forgot password
                          ],
                        ),
                      ),
                    ), //Email & Password
                    Flexible(
                      flex: 20,
                      fit: FlexFit.loose,
                      child: SizedBox(height: screenHeight(context,dividedBy: 6)),
                    ), //Spacer
                    Flexible(
                      //SIGN IN
                      flex: 20,
                      fit: FlexFit.loose,
                      child: Column(
                        children: [
                          Opacity(
                            opacity: 0.9,
                            child: FlatButton(
                              onPressed: () {
                                Navigator.pushNamedAndRemoveUntil(context, '/home', ModalRoute.withName('/'));
                              },
                              child: Text('SIGN IN',
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

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Don\'t have an account?',
                                  style: TextStyle(
                                      fontSize: 14.0, color: Colors.grey[700])),
                              TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, '/sign_up');
                                },
                                child: Text('Sign up now.',
                                    style: TextStyle(
                                        fontSize: 14.0,
                                        color: Colors.grey[100],
                                        decoration: TextDecoration.underline)),
                              ),
                            ],
                          ), //Dont have account and sign up
                        ],
                      ),
                    ), //Sign In & Sign up
                  ],
                ),
              ),
            ),
          ),
        ],
      );
  }
}



