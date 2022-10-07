import 'package:flutter/material.dart';
import 'package:english/Telas/Bichos.dart';
import 'package:english/Telas/Numeros.dart';
import 'package:english/Telas/Vogais.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController? _TabControler;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    ///Defino quando abas tem a classe atual (usa o SingleTickerProviderStateMixin)
    _TabControler = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();

    ///free
    _TabControler?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffD2B48C),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Aprenda Inglês'),

        bottom: TabBar(
             indicatorColor: Colors.white,
            labelStyle:  TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 17
            ),
            ///O controlador serve para fazer o vínculo entre minhas abas e o conteudo que deve ser mostrado (Body)
            controller: _TabControler,
            tabs: <Widget>[
              Tab(child: Text('Bichos')),
              Tab(child: Text('Números')),
              Tab(child: Text('Vogais')),
            ]),
      ),

      body: TabBarView(
        controller: _TabControler,
        children: <Widget>[
          Bichos(),

          ///Aba1
          Numeros(),

          ///Aba2
          Vogais(),

          ///Aba3
        ],
      ),
    );
  }
}
