import 'package:flutter/material.dart';
import 'package:natgeo/check.dart';
import 'package:natgeo/splash.dart';
class naviga extends StatefulWidget {
  const naviga({Key? key}) : super(key: key);

  @override
  State<naviga> createState() => _navigaState();
}

class _navigaState extends State<naviga> {

  var nvg=0;
  List navigation=[
    check(),
    Text(""),
    Text(""),
    Text(""),


  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.black12),
          child: BottomNavigationBar(items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.home),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.home),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.home),label: ''),


    ],
            currentIndex: nvg,onTap: (int index) {
              nvg = index;
            }
    ),
        ),
      ),


      body:
        navigation.elementAt(nvg),






);
  }
}
