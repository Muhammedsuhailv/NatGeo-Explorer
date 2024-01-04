import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'dart:io';
class check extends StatefulWidget {
   check({Key? key}) : super(key: key);

  @override
  State<check> createState() => _checkState();
}

class _checkState extends State<check> {

  int _currentSlide = 0;

   List<Widget> images = [
  Image.asset("asset/bg3.jpg",fit: BoxFit.cover,),
  Image.asset("asset/download.jpg",fit: BoxFit.cover,)
// //
  ];
//
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Padding(
          padding: const EdgeInsets.only(right: 260.0),
          child: Image(image: AssetImage('asset/logo2.png'),height: 100,width: 150,
          ),
        ),
        actions: [

          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Icon(Icons.search_rounded),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 400.0,bottom: 20),
              child: Text('Top Stories',style: TextStyle( fontWeight: FontWeight.bold)),
            ),
          CarouselSlider(
            items: images.map((image) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(height: double.infinity,
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                    ),
                    child: image,
                  );
                },
              );
            }).toList(),
            options: CarouselOptions(
              height: 400.0,


              initialPage: 0,
              viewportFraction: 0.85,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              onPageChanged: (index, reason) {
                setState(() {
                  _currentSlide = index;
                });
              },
            ),
          ),

    Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: images.asMap().entries.map((entry) {
              return Container(
                width: 8.0,
                height: 8.0,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _currentSlide == entry.key ? Colors.blue : Colors.grey,
                ),
              );
            }).toList(),


         ),
    Padding(
      padding: const EdgeInsets.only(right: 370.0,bottom: 10),
      child: Text('Recent Stories',style: TextStyle(fontWeight: FontWeight.bold)),
    ),
            Row(
              children: [
                Image(image: AssetImage('asset/tiger.jpg'),width: 200,height: 200,)
             ,
                Text('afsdxasgfdsgfdsgfdas\ntydhgdgfdggfsg\ndfgfdgfgfsg\n')
                
              ],
            )
    ],
    ),
    ),
    );
  }
}

