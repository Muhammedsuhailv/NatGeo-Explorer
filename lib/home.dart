import 'package:flutter/material.dart';
class mainpage extends StatefulWidget {
  const mainpage({Key? key}) : super(key: key);

  @override
  State<mainpage> createState() => _mainpageState();
}

class _mainpageState extends State<mainpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(leading: Image(image: AssetImage('asset/natgeo.png'),
       ),
       actions: [
         Icon(Icons.search_rounded),
       ],
       ),
    );
  }
}

