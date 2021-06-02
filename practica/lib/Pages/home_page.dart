//import 'dart:js';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:practica/models/stories_model.dart';
import 'package:practica/providers/stories_provider.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //StoriesProvider storieProvider = new StoriesProvider();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF9F9F9),
      appBar: _appBar(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _etiquetas(),
            _historias(),
            Divider(
              color: Colors.grey,
              height: 0,
              thickness: 0.5,
            ),
//            _posts(context),
          ],
        ),
      ),
    );
  }

  Widget _appBar() {
    return AppBar(
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(0.5),
        child: Container(
          color: Colors.black38,
          height: 0.75,
        ),
      ),
      elevation: 0,
      centerTitle: true,
      backgroundColor: Color(0xFFF9F9F9),
      title: Container(
          margin: EdgeInsets.only(top: 10),
          child: SizedBox(
              height: 45, child: Image.asset('images/logo-instagram.png'))),
      leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Feather.camera,
            color: Colors.black,
            size: 30,
          )),
      actions: <Widget>[
        IconButton(
          onPressed: () {},
          icon: Icon(
            Feather.tv,
            color: Colors.black,
            size: 28,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            FontAwesome.send_o,
            color: Colors.black,
            size: 28,
          ),
        )
      ],
    );
  }

  Widget _etiquetas() {
    return Container(
      margin: EdgeInsets.only(top: 5, left: 15, right: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            "Stories",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Row(
            children: <Widget>[
              Icon(Icons.arrow_right),
              Text(
                "Watch All",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _historias() {
    StoriesProvider storieProvider = new StoriesProvider();
    return Container(
        height: 105,
        width: double.infinity,
        margin: EdgeInsets.only(
          top: 12,
          left: 10,
          right: 10,
        ),
        child: ListView(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          children: storieProvider.getStories().map((storie) {
            return _crearHistoria(storie);
          }).toList(),
        ));
  }

  Widget _crearHistoria(Storie storie) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              border: Border.all(
                width: 3,
                color: Color(0xFF8E44AD),
              )),
          child: Container(
            padding: EdgeInsets.all(2),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image(
                image: NetworkImage(storie.photo),
                height: 70,
                width: 70,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 6,
        ),
        Text(
          storie.name,
          style: TextStyle(fontSize: 15),
        )
      ],
    );
  }

//  Widget _posts(BuildContext context) {
//    return Container(
//        width: MediaQuery.of(context).size.width,
//        child: ListView.builder(
//            itemCount: 50,
//            itemBuilder: (context, i) {
//              return _crearPost();
//            }));
//  }

//  Widget _crearPost() {
//    return Container(
//      child: Column(
//        children: <Widget>[
//          Container(
//            child: Row(
//              children: <Widget>[],
//            ),
//          )
//        ],
//      ),
//    );
//  }
}
