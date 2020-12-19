import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class settings extends StatefulWidget {
  @override
  _settingsState createState() => _settingsState();
}

class _settingsState extends State<settings> {
  var name = 'Jeff Bezos';
  bool isSwitched = false;
  double rating = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.grey[800],
          ),
          brightness: Brightness.light,
          backgroundColor: Colors.grey[100],
          title: Text(
            'Settings',
            style: TextStyle(color: Colors.grey[800]),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        //Display
                        color: Colors.grey[200],
                        width: double.infinity,
                        alignment: Alignment(-1, 0),
                        child: TextButton.icon(
                            onPressed: null,
                            icon: Icon(
                              Icons.now_wallpaper,
                              color: Colors.black,
                            ),
                            label: Text('Display',
                                style: TextStyle(color: Colors.black)))),
                    //Display
                    FlatButton(
                      onPressed: null,
                      color: Colors.orange,
                      padding: EdgeInsets.fromLTRB(40, 10, 10, 0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                  child: Text('Description text',
                                      style: TextStyle(color: Colors.black))),
                              CupertinoSwitch(
                                value: isSwitched,
                                onChanged: (value) {
                                  setState(() {
                                    isSwitched = value;
                                    print(isSwitched);
                                  });
                                },
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                            child: Text(
                                'The title, date, time and other information about the flyer will be displayed below each flyer',
                                style: TextStyle(fontSize: 12)),
                          )
                        ],
                      ),
                    ),
                    FlatButton(
                        onPressed: null,
                        padding: EdgeInsets.fromLTRB(40, 10, 10, 10),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text('Columns per page:',
                                    style: TextStyle(color: Colors.black)),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(7, 0, 5, 0),
                                    child: Text('${rating.round()}',
                                        style: TextStyle(color: Colors.black)),
                                  ),
                                ),
                                CupertinoSlider(
                                  value: rating,
                                  max: 4,
                                  min: 1,
                                  divisions: 3,
                                  onChanged: (newRating) {
                                    setState(() => rating = newRating);
                                  },
                                ),
                              ],
                            ),
                            Text(
                                'The number of flyers that will appear next to each other on the screen',
                                style: TextStyle(fontSize: 12)),
                          ],
                        )),
                  ],
                ), //DISPLAY

                /*Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        //Display
                        color: Colors.grey[200],
                        width: double.infinity,
                        alignment: Alignment(-1, 0),
                        child: TextButton.icon(
                            onPressed: null,
                            icon: Icon(
                              Icons.emoji_people,   //or using people_...
                              color: Colors.black,
                            ),
                            label: Text('Community',
                                style: TextStyle(color: Colors.black)))),
                    FlatButton(
                        onPressed: null,
                        padding: EdgeInsets.fromLTRB(40, 10, 10, 10),
                        child: Column(
                          children: [
                            Text('Edit my communities',
                                style: TextStyle(color: Colors.black)),
                          ],
                        )),

                  ],
                ),*/ //COMMUNITY - To be added later

                Container(
                  width: double.infinity,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        //Help
                        color: Colors.grey[200],
                        width: double.infinity,
                        alignment: Alignment(-1, 0),
                        child: TextButton.icon(
                            onPressed: null,
                            icon: Icon(Icons.help, color: Colors.black),
                            label: Text('Help',
                                style: TextStyle(color: Colors.black))),
                      ), //Help
                      FlatButton(
                        //Report a bug
                        onPressed: () {
                          Navigator.pushNamed(context, '/reportbug');
                        },
                        padding:
                            EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                        child: SizedBox(
                          width: double.infinity,
                          child: Text(
                            'Report a bug / Suggest a feature',
                            style: TextStyle(color: Colors.black),
                            textAlign: TextAlign.start,
                          ),
                        ),
                      ), //Report a bug
                      FlatButton(
                        //Contact us
                        onPressed: () {
                          Navigator.pushNamed(context, '/contact');
                        },
                        padding:
                            EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                        child: SizedBox(
                          width: double.infinity,
                          child: Text('Contact us',
                              style: TextStyle(color: Colors.black)),
                        ),
                      ), //Report a bug
                    ],
                  ),
                ), //HELP

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      //About
                      width: double.infinity,
                      alignment: Alignment(-1, 0),
                      color: Colors.grey[200],
                      child: TextButton.icon(
                          onPressed: null,
                          icon: Icon(
                            Icons.info,
                            color: Colors.black,
                          ),
                          label: Text('About',
                              style: TextStyle(color: Colors.black))),
                    ), //About
                    FlatButton(
                      //Terms of Service
                      onPressed: () {
                        Navigator.pushNamed(context, '/tos');
                      },
                      padding:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                      child: SizedBox(
                        width: double.infinity,
                        child: Text('Terms of Service',
                            style: TextStyle(color: Colors.black)),
                      ),
                    ), //Terms of service
                  ],
                ), //ABOUT

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        //Security
                        color: Colors.grey[200],
                        width: double.infinity,
                        alignment: Alignment(-1, 0),
                        child: TextButton.icon(
                            onPressed: null,
                            icon: Icon(Icons.lock, color: Colors.black),
                            label: Text('Security',
                                style: TextStyle(color: Colors.black)))),
                    //Security
                    FlatButton(
                      //Change password
                      onPressed: () {
                        Navigator.pushNamed(context, '/password');
                      },
                      padding:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                      child: SizedBox(
                        width: double.infinity,
                        child: Text('Change password',
                            style: TextStyle(color: Colors.black)),
                      ),
                    ),
                    //Change password
                    FlatButton(
                      //Change password
                      onPressed: () {
                        Navigator.pushNamed(context, '/login');
                      },
                      padding:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                      child: SizedBox(
                          width: double.infinity,
                          child: Text('Logout',
                              style: TextStyle(color: Colors.red))),
                    ),
                  ],
                ), //SECURITY
              ],
            ),
          ),
        ));
  }
}
