import 'dart:math';

import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  
// ignore: prefer_const_constructors
final boxDecoration = BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.2,0.8],
          colors: [
            Color(0xff2E305F),
            Color(0xff202333)
          ]
        )
      );

  Background({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    

    return Stack(
      children: [

        Container(decoration: boxDecoration,),
        Positioned(
          top: -100,
          left: -30,
          child: _PinkBox())
        

      ],
      //morado
      
      
     
      //caja rosada

    );
  }
}

class _PinkBox extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -pi/5,
      child: Container(
        width: 360,
        height: 360,
        decoration: BoxDecoration(
          color:Colors.pink,
          borderRadius:BorderRadius.circular(80),
          gradient: const LinearGradient(
            colors: [
              Color.fromARGB(235, 232, 56, 238),
              Color.fromARGB(235, 221, 134, 233),
    
            ]
          )
        ),
    
        
      ),
    );
  }
}