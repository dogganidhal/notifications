import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

import 'package:notifications/pages/adhkar/arabiclist.dart';
import 'package:notifications/utils/colors.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter/cupertino.dart';

class Adhkar extends StatefulWidget {
  static String urL;

  //const Adhkar({Key key}) : super(key: key);
  @override
  _AdhkarPageState createState() => _AdhkarPageState();
}

class _AdhkarPageState extends State<Adhkar> {

    FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;
    var android;
    var iOS;
    var initSettings;

    Future onDidReceiveLocalNotification(int id, String title, String body, String payload) async{
        await showDialog(
            context: context,
            builder: (BuildContext context) => CupertinoAlertDialog(
               title: Text("تذكير للدعاء"), //Text(title)
                content: Text("اللهم ارحمه واغفرله وآنس وحشته ووسع قبره اللهم اجعل عيده في الجنة أجمل، اللهمّ اجعل قبره روضةً من رياض الجنّة، ولا تجعله حفرةً من حفر النّار"), //Text(body)
            )
        );
    }

    Future onSelectNotification(String payload) async{
        debugPrint("Payload : $payload");
        await showDialog(context: context, builder: (_) => new AlertDialog(
            title: new Row(
                children: <Widget>[
                    Container(
                        width: 50, height: 50,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/photoes/1.png')
                            )
                        ),
                    ),
                    Text("تذكير")
                ],
            ),
            content: new Text("$payload"),
        ));
    }

    Future showNotification() async{

        /// my skype id is live:steadydevelop   if you have any question, please ping me in skype
        /// Please don't mention about skype, whatsapp, etc in freelancer chatting window

        var android = new AndroidNotificationDetails(
            'channelId', 'channelName', 'channelDescription',
            importance: Importance.Max, priority: Priority.High
        );
        var iOS = new IOSNotificationDetails();
        var platform = new NotificationDetails(android, iOS);
        await flutterLocalNotificationsPlugin.periodicallyShow(
            0, 'تذكير للدعاء', 'اللهم ارحمه واغفرله وآنس وحشته ووسع قبره',
            RepeatInterval.EveryMinute,
            platform, payload: 'اللهم ارحمه واغفرله وآنس وحشته ووسع قبره اللهم اجعل عيده في الجنة أجمل، اللهمّ اجعل قبره روضةً من رياض الجنّة، ولا تجعله حفرةً من حفر النّار.'

        );
    }

  @override
  void initState() {
    super.initState();

    flutterLocalNotificationsPlugin = new FlutterLocalNotificationsPlugin();
    android = new AndroidInitializationSettings('@mipmap/ic_launcher');
    iOS = new IOSInitializationSettings(
        onDidReceiveLocalNotification: onDidReceiveLocalNotification
    );
    initSettings = new InitializationSettings(android, iOS);
    flutterLocalNotificationsPlugin.initialize(initSettings, onSelectNotification: onSelectNotification);

  }

  Future<dynamic> getJson() async {
        showNotification();
    return DefaultAssetBundle.of(context).loadString('assets/json.json');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       // backgroundColor: ColorBook.vertClair,
        body: Center(
            child: Directionality(
          textDirection: TextDirection.rtl,
          child: FutureBuilder(
            builder: (context, snapshot) {
              var showData = json.decode(snapshot.data.toString());
              if (showData == null) {
                return CircularProgressIndicator(
                  backgroundColor: ColorBook.vertClair,
                );
              } else {
                return ListView.builder(
                  itemCount: showData.length,
                  itemBuilder: (BuildContext context, int index) {
                    //    return ListTile(title: Text(showData[index]['TITLE'] , ), );
                    //subtitle: Text(showData[index]['CATEGORY']),
                    return Card(
                        elevation: 25,
                        color: Colors.white,
                        child: Container(
                            color: Colors.white,
                            height: 50,
                            child: RaisedButton(
                              child: Center(
                                child: Row(
                                  children: <Widget>[
                                    // SizedBox(width: 5,),
                                    Icon(
                                      Icons.brightness_4,
                                      color: ColorBook.color3,
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      showData[index]['TITLE'],
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: ColorBook.color2),
                                    ),
                                  ],
                                ),
                              ),
                              onPressed: () async {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ArabicTextlist(
                                              title: showData[index]['TITLE'],
                                              jsonUrl: showData[index]['TEXT'],
                                            )));
                              },
                            )));
                  },
                );
              }
              //);
            },
            future: getJson(),
          ),
        )));
  }
}
