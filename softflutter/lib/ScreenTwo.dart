import 'package:flutter/material.dart';

class TwoPage extends StatefulWidget {
  TwoPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _TwoPageState createState() => _TwoPageState();
}

class _TwoPageState extends State<TwoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Detalles"),
        ),
        body: Container(
          color: Colors.white,
          child:  Align(
            alignment: Alignment.center,
            child: new Image.asset('images/asd.jpeg', width: 1000,height: 1000,),
          )
        ));
  }
}
