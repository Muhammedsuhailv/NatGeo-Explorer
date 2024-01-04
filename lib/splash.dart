import 'package:flutter/material.dart';
import 'package:natgeo/check.dart';
import 'package:natgeo/home.dart';
class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(image: DecorationImage(fit: BoxFit.cover,image: AssetImage('asset/bg.jpg'))),

            child: SingleChildScrollView(
              child: Column(
                
                children: [
                  SizedBox(height: 300,),
                  Padding(
                    padding: const EdgeInsets.only(right: 150.0),
                    child: Image(image: AssetImage('asset/natgeo.png'),width: 200,height: 200,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 170.0,),
                    child: Text('Digital',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 60,color: Colors.white)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 80.0,),
                    child: Text('Magazine',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 60,color: Colors.white)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 0.0,left: 50),
                    child: Text('Discover the beauty of nature And the splender\nof wildlife Discover the beauty of nature And the splender of wildlife Discover.',style: TextStyle(color: Colors.white,fontSize: 18)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0,right: 150),
                    child: InkWell(
                      onTap:  () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) =>check(),));
                      },
                      child: Container(
                        width: 160,
                        height: 60,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(gradient: LinearGradient(begin: Alignment.topLeft,end:Alignment.bottomCenter,colors: [Colors.white60,Colors.white10]), color: Colors.white.withOpacity(0.9),borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                            Text('Get Started',style: TextStyle(color: Colors.white)),
                            Icon(Icons.arrow_circle_right_outlined,color: Colors.white,)
                          ],
                        ),
                      ),
                    ),
                  ),
                ],

              ),
            ),
            
          ),




    );
  }
}
