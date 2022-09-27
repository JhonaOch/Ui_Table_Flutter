import 'package:flutter/material.dart';

class PageTitle extends StatelessWidget {
  const PageTitle({Key? key}) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30,vertical: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const Text('Classify transaction',style:TextStyle(fontSize: 20,fontWeight:FontWeight.bold,color:Colors.white) ,),
          const SizedBox(height:10),
          const Text('Classify this transaction into a particular category',style:TextStyle(fontSize: 16,color:Colors.white))

        ],
        
      ),
    );
  }
}