import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:notifications/pages/adhkar/adhkar.dart';
import 'package:notifications/pages/duaa/ui/imagelist.dart';
import 'package:notifications/pages/homepage/widgets/mainwidget.dart';
import 'package:notifications/pages/sunan/sunan.dart';
import 'package:notifications/utils/colors.dart';
import 'package:notifications/utils/const.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
            //body: MainWidget(context: context,),

            appBar: AppBar(backgroundColor: ColorBook.color3),
            //,title: Text("MyApp" , style:  TextStyle(color: ColorBook.color2),
            body: Center(child: Adhkar()

                //child: Text('My Page!')

                ),
            drawer: Drawer(
              child: Directionality(
                textDirection: TextDirection.rtl,
                child:
                    // Add a ListView to the drawer. This ensures the user can scroll
                    // through the options in the drawer if there isn't enough vertical
                    // space to fit everything.
                    ListView(
                  // Important: Remove any padding from the ListView.
                  padding: EdgeInsets.zero,
                  children: <Widget>[
                    new Container(
                        child:
                            // Column(children:<Widget>[
                            new DrawerHeader(
                                child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/photo2.jpg")))))

                        // new Text("شهيد الوطن"),
                        // ]),
                        //color: ColorBook.color,
                        ),

                    /* new Container(child: DrawerHeader(
              child: Text(' شهيد الوطن'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),),*/
                    /*  new Container(child:
            ListTile(
              title: Text(Const.adhkar),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),),*/
                    SizedBox(
                      height: 3,
                      child: Container(
                        color: ColorBook.color3,
                      ),
                    ),
                    new Container(
                      child: ListTile(
                        title: Text(
                          Const.duaa,
                          style: TextStyle(
                              fontSize: 25,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w700,
                              color: ColorBook.color2),
                        ),
                        onTap: () {
                          Navigator.pop(context);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ImageListPage()));
                        },
                      ),
                    ),
                    SizedBox(
                      height: 3,
                      child: Container(
                        color: ColorBook.color3,
                      ),
                    ),
                    new Container(
                      child: ListTile(
                        title: Text(Const.sunan,
                            style: TextStyle(
                                fontSize: 25,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.w700,
                                color: ColorBook.color2)),
                        onTap: () {
                          Navigator.pop(context);
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Sunan()));
                        },
                      ),
                    ),
                    SizedBox(
                      height: 3,
                      child: Container(
                        color: ColorBook.color3,
                      ),
                    ),
                  ],
                ),
              ),
            )));
  }
}
