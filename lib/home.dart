import 'dart:math';
import 'package:Bulletin/add_photo.dart';
import 'package:Bulletin/pinned.dart';
import 'package:Bulletin/settings_pages/settings.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:page_transition/page_transition.dart';
import 'package:Bulletin/main.dart';
import 'package:provider/provider.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  List dataList = new List<int>();
  bool isLoading = false;
  int pageCount = 1;
  ScrollController _scrollController;

  @override
  void initState() {
    super.initState();

    ////LOADING FIRST  DATA
    addItemIntoList(1);

    _scrollController = new ScrollController(initialScrollOffset: 0)
      ..addListener(_scrollListener);
  }

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
                Navigator.push(context, SlideRightRoute(page: settings()));
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
            title: Center(
              child: SizedBox(
                height: kToolbarHeight / 2,
                child: Image.asset('assets/name.png'),
              ),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.cyanAccent[400],
            onPressed: () {
              Navigator.push(
                  context,
                  PageTransition(
                      type: PageTransitionType.bottomToTop,
                      child: add_photo()));
            },
            child: Icon(
              Icons.add,
            ),
          ),
          body: Padding(
            padding: EdgeInsets.fromLTRB(0, 1, 0, 0),
            child: Container(
              decoration: BoxDecoration(
                border: Border.symmetric(
                  //horizontal: BorderSide(color: Colors.cyanAccent),
                  vertical: BorderSide(color: Colors.grey[400]),  //Color of outside border
                )
              ),

              child: StaggeredGridView.count(
                crossAxisCount: num_flyers_per_page + 1,
                //Todo: Provider.of<Map>(context).data['num_columns'],
                controller: _scrollController,
                scrollDirection: Axis.vertical,
                mainAxisSpacing: 0,
                crossAxisSpacing: 0,
                physics: AlwaysScrollableScrollPhysics(),
                /*staggeredTileBuilder: (int index) {
                  return StaggeredTile.fit(1);
                },
                itemBuilder: (BuildContext context, int index) {
                  print('${dataList[index]}');
                  return ListTile(
                    contentPadding: EdgeInsets.fromLTRB(3, 0, 3, 0),
                    subtitle: Text('Name & Info here'),
                    title:
                        Image.asset('assets/flyers/Flyer${index%10+1}.jpg'),
                  );
                },*/
                children: dataList.map((value) {
                  return Container(
                    //padding: EdgeInsets.fromLTRB(3,0,3,0),
                    decoration: BoxDecoration(
                        border: Border.all(
                      color: Colors.grey[400], //color of borders around flyers
                      width: 2,
                    )),
                    child: ListTile(
                      title: Image.asset(
                          'assets/flyers/Flyer${dataList[value] % 10 + 1}.jpg'),
                      //subtitle: Text('Name & Info'),
                      contentPadding: EdgeInsets.fromLTRB(6, 3, 6, 3),
                    ),
                  );
                }).toList(),
                staggeredTiles: dataList
                    .map<StaggeredTile>((item) => StaggeredTile.fit(1))
                    .toList(),
              ),
            ),
          ),

          /*Padding(
            padding: EdgeInsets.all(0),
            child: GridView.count(
                scrollDirection: Axis.vertical,
                physics: ScrollPhysics(),
                mainAxisSpacing: 5,
                crossAxisSpacing: 0,
                crossAxisCount: 2,
                children: <Widget>[
                  Container(
                    child: PhotoView(
                      backgroundDecoration: BoxDecoration(color: Colors.white),
                      enableRotation: true,
                      minScale: PhotoViewComputedScale.contained,
                      maxScale: PhotoViewComputedScale.contained*2,
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
          ),*/
        ),
      ],
    );
  }

  _scrollListener() {
    if (_scrollController.offset >=
            _scrollController.position.maxScrollExtent &&
        !_scrollController.position.outOfRange) {
      setState(() {
        print("comes to bottom $isLoading");
        isLoading = true;

        if (isLoading) {
          print("RUNNING LOAD MORE");

          pageCount = pageCount + 1;

          addItemIntoList(pageCount);
        }
      });
    }
  }

////ADDING DATA INTO ARRAYLIST
  void addItemIntoList(var pageCount) {
    var num_flyers_to_load = 20;
    for (int i = (pageCount * num_flyers_to_load) - num_flyers_to_load;
        i < pageCount * num_flyers_to_load;
        i++) {
      dataList.add(i);
      isLoading = false;
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}

class SlideRightRoute extends PageRouteBuilder {
  final Widget page;

  SlideRightRoute({this.page})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              page,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(-1, 0),
              end: Offset.zero,
            ).animate(animation),
            child: child,
          ),
        );
}

class SlideLeftRoute extends PageRouteBuilder {
  final Widget page;

  SlideLeftRoute({this.page})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              page,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(-1, 0),
              end: Offset.infinite,
            ).animate(animation),
            child: child,
          ),
        );
}
