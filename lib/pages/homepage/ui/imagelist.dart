import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notifications/utils/colors.dart';

class ImageListPage extends StatefulWidget{
    @override
  _ImageListState createState() => _ImageListState();
}
class _ImageListState extends State<ImageListPage>{

    var imageList = [
        "assets/photoes/1.png",
        "assets/photoes/2.png",
        "assets/photoes/3.png",
        "assets/photoes/4.png",
        "assets/photoes/5.png",
        "assets/photoes/6.png",
    ];

    @override
    void initState(){
        super.initState();
    }

    @override
    Widget build(BuildContext context){
        return Directionality(
            textDirection: TextDirection.rtl,
            child: Scaffold(
                appBar: AppBar(backgroundColor: ColorBook.color3),
                body: Directionality(
                    textDirection: TextDirection.rtl,
                    child: ListView.builder(
                        itemCount: imageList.length,
                        itemBuilder: (BuildContext ctxt, int index) {
                            return Card(
                                elevation: 25,
                                color: Colors.white,
                                child: Container(
                                    width: MediaQuery.of(context).size.width * 0.8,
                                    height: MediaQuery.of(context).size.width * 0.8,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        image: DecorationImage(
                                            image: AssetImage(imageList[index])
                                        )
                                    ),
                                ));
                        }),
                )),
        );
    }

}