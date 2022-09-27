import 'package:flutter/material.dart';

class ScrollScreen extends StatelessWidget {
 

  // ignore: prefer_const_constructors
  final boxDecoration=BoxDecoration(
    gradient: const LinearGradient(
      begin:Alignment.topCenter,
      end: Alignment.bottomCenter,
      stops: [0.5,0.5] ,
      colors: [
        Color.fromARGB(255, 107, 238, 203),
        Color.fromARGB(255, 48, 178, 214),
      ])
  );

  ScrollScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.fromARGB(255, 48, 178, 214),
      body:Container(
        decoration: boxDecoration,
        child: PageView(
          physics:const BouncingScrollPhysics() ,
          scrollDirection:Axis.vertical ,
          children: const [
            

             // ignore: prefer_const_constructors
             Page1(),
             Page2()

          ],
        ),
      )
      ,
      
    );
  }

  
}

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

 
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
          Background(),
          MainContent()
      ],
    );
  }
}

class MainContent extends StatelessWidget {
  const MainContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(fontSize:50,fontWeight:FontWeight.bold,color:Colors.white);
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const SizedBox(height: 30,),
    
           // ignore: prefer_const_constructors
           Text('11°',style: textStyle,),
           const Text('Miercoles',style:textStyle),
            Expanded(child: Container()),
           const Icon(Icons.keyboard_arrow_down,size: 100,color: Colors.white),
    
        ],
       
      ),
    );
  }
}

class Background extends StatelessWidget {
  const Background({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 48, 178, 214),
      alignment: Alignment.topCenter,
      child: const Image(
        image: AssetImage('assets/scroll-1.png')));
  }

  
}

class Page2 extends StatelessWidget {
    const Page2({ Key? key }) : super(key: key);
  
    @override
    Widget build(BuildContext context) {
      return Container(
        color: const Color.fromARGB(255, 48, 178, 214),
        child: Center(
          child:TextButton(
            onPressed: (){}, child: 
            const Padding(
              padding: EdgeInsets.symmetric(horizontal:40),
              child: Text('Bienvenido',style:TextStyle(color: Colors.white,fontSize: 30),),
            ),
            style: TextButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 48, 89, 214),
              shape: const StadiumBorder()
            ),
            
            )
        ),
        
      );
    }
  }