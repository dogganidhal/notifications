import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notifications/pages/adhkar/adhkar.dart';
import 'package:notifications/utils/colors.dart';

class SingleDikr extends StatefulWidget {
  var show ;
var showData = Adhkar.urL ;

   SingleDikr({this.show});


  @override
    _SingleDikrState createState() =>  _SingleDikrState();
}


class _SingleDikrState  extends State<SingleDikr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorBook.vertClair,
        body: Center(
            child: Directionality(
          textDirection: TextDirection.rtl,
         /* child: FutureBuilder(
            builder: (context, snapshot) {
              var showData = Adhkar.urL ;
              if (showData == null) {
                return CircularProgressIndicator(
                  backgroundColor: ColorBook.vertClair,
                );
              } else {*/
                child: ListView.builder(

                  itemCount: widget.showData.length,
                  itemBuilder: (BuildContext context, int index) {
                    
                    return Card(
                        elevation: 25,
                        color: Colors.white,
                        child: Container(
                            color: Colors.white,
                            height: 200,
                            child:
                                    Text(
                                      widget.showData[index],
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: ColorBook.color2),
                                    ),
                        )
                    );
                  }
           //     );
           //}
//}
            
          )
            )
        )
    );
            
  }


}