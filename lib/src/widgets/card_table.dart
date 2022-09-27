import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({Key? key}) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    return Table(

      // ignore: prefer_const_literals_to_create_immutables
      children: [
         const TableRow(
          children: [
            _CardDis(color: Colors.blue,icon:Icons.border_all,text: 'General',),
             _CardDis(color: Colors.green,icon:Icons.border_all,text: 'ASSSSS',),
             _CardDis(color: Colors.pinkAccent,icon:Icons.signal_cellular_connected_no_internet_0_bar,text: 'ASSSS',),
          
            

          ]
        ),

        const TableRow(
          children: [
            _CardDis(color: Colors.blue,icon:Icons.border_all,text: 'General',),
             _CardDis(color: Colors.green,icon:Icons.border_all,text: 'ASSSSS',),
             _CardDis(color: Colors.pinkAccent,icon:Icons.signal_cellular_connected_no_internet_0_bar,text: 'ASSSS',),
          
            

          ]
        ),
        const TableRow(
          children: [
            _CardDis(color: Colors.blue,icon:Icons.border_all,text: 'General',),
             _CardDis(color: Colors.green,icon:Icons.border_all,text: 'ASSSSS',),
             _CardDis(color: Colors.pinkAccent,icon:Icons.signal_cellular_connected_no_internet_0_bar,text: 'ASSSS',),
          
            

          ]
        ),
        const TableRow(
          children: [
            _CardDis(color: Colors.blue,icon:Icons.border_all,text: 'General',),
             _CardDis(color: Colors.green,icon:Icons.border_all,text: 'ASSSSS',),
             _CardDis(color: Colors.pinkAccent,icon:Icons.signal_cellular_connected_no_internet_0_bar,text: 'ASSSS',),
          
            

          ]
        ),

        const TableRow(
          children: [
            _CardDis(color: Colors.blue,icon:Icons.border_all,text: 'General',),
             _CardDis(color: Colors.green,icon:Icons.border_all,text: 'ASSSSS',),
             _CardDis(color: Colors.pinkAccent,icon:Icons.signal_cellular_connected_no_internet_0_bar,text: 'ASSSS',),
          
            

          ]
        ),

        const TableRow(
          children: [
            _CardDis(color: Colors.blue,icon:Icons.border_all,text: 'General',),
             _CardDis(color: Colors.green,icon:Icons.border_all,text: 'ASSSSS',),
             _CardDis(color: Colors.pinkAccent,icon:Icons.signal_cellular_connected_no_internet_0_bar,text: 'ASSSS',),
          
            

          ]
        ),
       
      ]


    );
  }
}

class _CardDis extends StatelessWidget {

  final IconData icon;
  final Color color;
  final String text;

  const _CardDis({Key? key, required this.icon, required this.color, required this.text}) : super(key: key);
 

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5,sigmaY:5),
          child: Container(
           // margin: EdgeInsets.all(15),
            height: 130,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(62, 66, 107, 0.7),
              borderRadius: BorderRadius.circular(11)
            ),
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: color,
                  child: Icon(icon,size:35,color: Colors.white,),
                  radius: 30,
                ),
        
                const SizedBox(height: 10,),
                Text(text,style:const TextStyle(color:Colors.blue,fontSize:18))
        
        
              ],
            ),
          ),
        ),
      ),
    );
  }
}