// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class DisenioUno extends StatelessWidget {
  const DisenioUno({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Image(
            image: AssetImage('assets/landscape.jpg'),
          ),
          _Title(),
          ButtonSection(),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(
                  'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.',
                  textAlign: TextAlign.justify))
        ],
      ),
    );
  }
}

class _Title extends StatelessWidget {
  const _Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Oeschin Lake Campround',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('Oeschin Lake', style: TextStyle(color: Colors.black45))
            ],
          ),
          Expanded(child: Container()),
          Icon(Icons.star, color: Colors.red),
          Text('41')
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          CustomButton(
            icon: Icons.call,
            text: 'Call',
          ),
          CustomButton(
            icon: Icons.map,
            text: 'Route',
          ),
          CustomButton(
            icon: Icons.search,
            text: 'Share',
          )
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String text;

  const CustomButton({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        Icon(
          icon,
          size: 30,
        ),
        Text(text),
      ],
    );
  }
}
