import 'package:flutter/material.dart';

class Bichos extends StatefulWidget {
  const Bichos({Key? key}) : super(key: key);

  @override
  State<Bichos> createState() => _BichosState();
}

class _BichosState extends State<Bichos> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:

          Row(

            children: <Widget>[

              Image.asset('assets/img/macaco.png'),
              Image.asset('assets/img/vaca.png'),

            ],
          )














    );
  }
}
