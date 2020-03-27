import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notifications/pages/adhkar/jsonitem.dart';
import 'package:notifications/utils/colors.dart';
import 'package:http/http.dart' as http;

import 'detail_screen.dart';

class ArabicTextlist extends StatefulWidget {
  final String jsonUrl;
  final String title;
  static String text;

  const ArabicTextlist({Key key, this.title, this.jsonUrl}) : super(key: key);

  @override
  _ArabicTextlistState createState() =>
      _ArabicTextlistState(title: title, jsonUrl: jsonUrl);
}

class _ArabicTextlistState extends State<ArabicTextlist> {
  final String jsonUrl;
  final String title;

  _ArabicTextlistState({this.title, this.jsonUrl});

  @override
  void initState() {
    super.initState();
  }

  /// my skype id is live:steadydevelop   if you have any question, please ping me in skype
  /// Please don't mention about skype, whatsapp, etc in freelancer chatting window

  Future<List<JsonItem>> getJsonItems() async {
    List<JsonItem> jsonItems = List<JsonItem>();
    http.Response response = await http.get(jsonUrl);
    String body = utf8.decode(response.bodyBytes);
    jsonDecode(body).forEach((name, value) {
      List _jsonItems = value;
      jsonItems = _jsonItems.map((json) => JsonItem.fromJson(json)).toList();
      return jsonItems;
    });

    return jsonItems;
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
            appBar: AppBar(backgroundColor: ColorBook.color3),
            body: Directionality(
              textDirection: TextDirection.rtl,
              child: FutureBuilder<List<JsonItem>>(
                future: getJsonItems(),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  return snapshot.hasData
                      ? ListView.builder(
                          itemCount: snapshot.data.length,
                          itemBuilder: (BuildContext ctxt, int index) {
                            return
                                Card(
                                    elevation: 25,
                                    color: Colors.white,
                                    child: Container(
                                      color: Colors.white,
                                      height: 50,
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: <Widget>[
                                          Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width -
                                                  10,
                                              padding: EdgeInsets.all(5),
                                              child: RaisedButton(
                                                color: Colors.white,
                                                child: Text(
                                                  snapshot
                                                      .data[index].ARABIC_TEXT,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      color: ColorBook.color2),
                                                ),
                                                onPressed: () {
                                                  ArabicTextlist.text = snapshot
                                                      .data[index].ARABIC_TEXT;

                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              Details(
                                                                text: snapshot
                                                                    .data[index]
                                                                    .ARABIC_TEXT,
                                                              )));
                                                },
                                              ))
                                        ],
                                      ),
                                    ));
                          })
                      : Center(
                          child: CircularProgressIndicator(),
                        );
                },
              ),
            )));
  }
}
