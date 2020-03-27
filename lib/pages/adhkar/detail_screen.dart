import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notifications/utils/colors.dart';

class Details extends StatefulWidget {
  final String text ;
 
 const Details({Key key, this.text}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _DetailsState();
  }


}

class  _DetailsState extends State<Details> 
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return   Directionality(
        textDirection: TextDirection.rtl,
        child:Scaffold(appBar: AppBar(backgroundColor: ColorBook.color3),
        body: SafeArea(child: Text(widget.text , style: TextStyle(fontSize: 20),),),));;
  }
  
}