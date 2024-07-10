import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Stack(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 101),
                    child: Image.asset('assets/images/Ellipse 11.png',height: 224,width: 310.42,)),
                    Image.asset('assets/images/Ellipse 35.png'),
                  Image.asset('assets/images/Ellipse 29.png',width: 151,height: 157,),
                  Container(
                    padding: EdgeInsets.only(left: 23,top: 16),
                    child: Image.asset('assets/images/Layer 2.png'),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
