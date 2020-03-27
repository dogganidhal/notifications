/*import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notifications/utils/colors.dart';

class SunanDetails extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SunanState();
      }
    
   


}

 class _SunanState extends State<SunanDetails>{
    Future<dynamic> getJson() async {
    return DefaultAssetBundle.of(context).loadString('assets/1.json');
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(body:  Directionality(
              textDirection: TextDirection.rtl,child: FutureBuilder(

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
                    return Text(showData[index].toString());
                  }
                );
              }
      } ,future: getJson() ,
    ) ) );
  }
      
}*/