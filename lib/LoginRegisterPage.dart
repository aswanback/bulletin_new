import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart' show timeDilation;

class LoginRegisterPage extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _LoginRegisterState();
  }
}

class _LoginRegisterState extends State<LoginRegisterPage> {
  @override
  bool _throwShotAway = false;
  bool newValue;
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Image(
            image: AssetImage('assets/bkgd.png'),
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
            alignment: Alignment.center,
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                flex: 20,
                child: SizedBox(height: 10.0),
              ),
              FractionallySizedBox(
                widthFactor: 0.6,
                child: Image.asset(
                  'assets/whitename.png',
                  alignment: Alignment.center,
                ),
              ),
              Expanded(
                flex: 20,
                child: SizedBox(height: 10.0),
              ),
              Expanded(
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
                      Row(
                        children: [
                          /*CheckboxListTile(
                            value: _throwShotAway,
                            onChanged: (newValue) {
                              setState(() {
                                _throwShotAway = newValue;
                              });
                            },
                            title: Text('Throw away your shot'),
                          ),*/
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 5, 0),
                            child: TextButton(
                              onPressed: null,
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
              ),
              Expanded(
                flex: 20,
                child: Column(
                  children: [
                    Opacity(
                      opacity: 0.9,
                      child: FlatButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, '/home');
                        },
                        child: Text('SIGN IN',
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
                    //SizedBox(height: 5.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Don\'t have an account?',
                            style: TextStyle(
                                fontSize: 14.0, color: Colors.grey[700])),
                        TextButton(
                          onPressed: null,
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
              ),
            ],
          ),
        ],
      ),
    );
  }
}
