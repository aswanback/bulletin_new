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

class pinned extends StatefulWidget {
  @override
  _pinnedState createState() => _pinnedState();
}

class _pinnedState extends State<pinned> {
  List dataListPinned = new List<int>();
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
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        brightness: Brightness.light,
        backgroundColor: Colors.grey[100],
        elevation: 10,
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.grey[800]),
          onPressed: () => Navigator.pop(context, false),
        ),
        title: Text('Pinned Flyers',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.grey[800])),
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
            crossAxisCount: num_flyers_per_page_pinned + 1,
            //Todo: Provider.of<Map>(context).data['num_columns'],
            controller: _scrollController,
            scrollDirection: Axis.vertical,
            mainAxisSpacing: 0,
            crossAxisSpacing: 0,
            physics: AlwaysScrollableScrollPhysics(),
            children: dataListPinned.map((value) {
              return Container(
                //padding: EdgeInsets.fromLTRB(3,0,3,0),
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey[400], //color of borders around flyers
                      width: 2,
                    )),
                child: ListTile(
                  title: Image.asset(
                      'assets/flyers/Flyer${dataListPinned[value] % 10 + 1}.jpg'),
                  //subtitle: Text('Name & Info'),
                  contentPadding: EdgeInsets.fromLTRB(6, 3, 6, 3),
                ),
              );
            }).toList(),
            staggeredTiles: dataListPinned
                .map<StaggeredTile>((item) => StaggeredTile.fit(1))
                .toList(),
          ),
        ),
      ),
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
      dataListPinned.add(i);
      isLoading = false;
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}








