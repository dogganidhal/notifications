/*import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:notifications/pages/sunan/details_sunan.dart';
import 'package:notifications/utils/colors.dart';

import 'json_item.dart';

class Sunan extends StatefulWidget {
   String text="" ;
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SunanState();
      }
    
    }
    
    class _SunanState extends State<Sunan> {
      Future<dynamic> getJson() async {
    return DefaultAssetBundle.of(context).loadString('assets/1.json');
  }

Future<String> _loadAsset() async {
  return await rootBundle.loadString('assets/1.json');
}
  Future<List<JsonItems>> getJsonItems() async {
    List<JsonItems> jsonItems = new List<JsonItems>();
    String jsonString = await _loadAsset();
    final jsonResponse = json.decode(jsonString);
    jsonDecode(jsonResponse).forEach((name, value) {
      List _jsonItems = value;
      jsonItems = _jsonItems.map((json) => JsonItems.fromJson(json)).toList();
      return jsonItems;
    });

    return jsonItems;
  }

     
  @override
  Widget build(BuildContext context) {


    
    return 
       Scaffold(
      //  backgroundColor: ColorBook.vertClair,
        body: Center(
            child: Directionality(
          textDirection: TextDirection.rtl,
          child: FutureBuilder(
            builder: (context, snapshot) {
              /*var showData = json.decode(snapshot.data.toString());
              if (showData == null) {
                return CircularProgressIndicator(
                  backgroundColor: ColorBook.vertClair,
                );
              } else {*/
                return ListView.builder(
                  itemCount: snapshot.data.length,
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
                                      snapshot.data[index].title,
                                      //showData[index]['title'],
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: ColorBook.color2),
                                    ),
                                  ],
                                ),
                              ),
                              onPressed: () async {
                                                               Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SunanDetails(
                                              
                                            )));
                              
                              },
                            )));
                  },
                );
              
               //);
             // }
            },
            future:
               getJsonItems(),
          ),
        )));
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
     /*  Directionality(
          textDirection: TextDirection.rtl,child:Scaffold(appBar: AppBar(backgroundColor: ColorBook.color3,)   ,body:    ListView(children: <Widget>[
      Container(child: RaisedButton(child: Text("سنن النوم" ), onPressed: () {
                              Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>  SunanDetails(),
                                            ));

      },) ),
       Container(child: RaisedButton(child: Text (" سنن الوضوء والصلاة"), onPressed: () {

       },) ),
        Container(child: RaisedButton(child: Text("سنن الصيام"), onPressed: () {},), ),
         Container(child: RaisedButton(child: Text("سنن السفر"), onPressed: () {},), ),
          Container(child: RaisedButton(child: Text("سنن اللباس و الطعام"), onPressed: () {},), ),
           Container(child: RaisedButton(child: Text("سنن الذكر والدعاء"), onPressed: () {},), ),
          

    ],)    )
    );*/
  }

    }

*/