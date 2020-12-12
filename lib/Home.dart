import 'dart:math';

import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image(
          image: AssetImage('assets/bkgd.png'),
          fit: BoxFit.cover,
          height: double.infinity,
          width: double.infinity,
          alignment: Alignment.center,
        ),
        Scaffold(
          backgroundColor: Colors.grey[100],
          appBar: AppBar(
            brightness: Brightness.light,
            backgroundColor: Colors.grey[100],
            elevation: 10,
            //toolbarOpacity: 1,
            /*bottom: PreferredSize(
              child: Container(
                color: Colors.grey[700],
                padding: const EdgeInsets.all(1.0),
              ),
            ),*/
            leading: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/settings');
              },
              icon: Icon(Icons.account_circle,
                  color: Colors.grey[800], size: 30.0),
            ),
            actions: [
              Transform.rotate(
                angle: 7 * pi / 4,
                child: IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/pinned');
                    },
                    icon: Icon(Icons.push_pin,
                        color: Colors.grey[800], size: 30.0)),
              )
            ],
            title: SizedBox(
              height: kToolbarHeight / 2,
              child: Image.asset('assets/name.png'),
            ),
          ),
          body: Padding(
            padding: EdgeInsets.all(10),
            child: GridView.count(
                scrollDirection: Axis.vertical,
                physics: ScrollPhysics(),
                mainAxisSpacing: 20,
                crossAxisSpacing: 10,
                crossAxisCount: 2,
                children: <Widget>[
                  Container(
                    child: PhotoView(
                      backgroundDecoration: BoxDecoration(color: Colors.white),
                      enableRotation: true,
                      minScale: PhotoViewComputedScale.contained*0.2,
                      maxScale: PhotoViewComputedScale.contained*5,
                      initialScale: PhotoViewComputedScale.contained,
                      basePosition: Alignment.center,
                      loadFailedChild: CircularProgressIndicator(),
                      imageProvider: AssetImage('assets/flyers/Flyer7.png'),
                    ),
                  ),
                  Container(
                    child: Image.asset('assets/flyers/FlyerIm8.jpg'),
                  ),
                  Container(
                    child: Image.asset('assets/flyers/Flyer9.png'),
                  ),
                  Container(
                    child: Image.asset('assets/flyers/Flyer10.jpg'),
                  ),
                  Container(
                    child: Image.asset('assets/flyers/Flyer5.jpg'),
                  ),
                  Container(
                    child: Image.asset('assets/flyers/Flyer6.jpg'),
                  ),
                  Container(
                    child: Image.asset('assets/flyers/Flyer1.jpg'),
                  ),
                  Container(
                    child: Image.asset('assets/flyers/Flyer2.jpg'),
                  ),
                  Container(
                    child: Image.asset('assets/flyers/Flyer3.jpg'),
                  ),
                  Container(
                    child: Image.asset('assets/flyers/Flyer4.jpg'),
                  ),
                  Container(
                    child: Image.asset('assets/flyers/Flyer5.jpg'),
                  ),
                  Container(
                    child: Image.asset('assets/flyers/Flyer6.jpg'),
                  ),
                ]),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.pushNamed(context, '/addphoto');
            },
            child: Icon(
              Icons.add,
            ),
          ),
        ),
      ],
    );
  }
}
