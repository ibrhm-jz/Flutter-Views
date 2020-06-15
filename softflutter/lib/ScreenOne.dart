import 'package:flutter/material.dart';
import 'ScreenTwo.dart';

class OnePage extends StatefulWidget {
  OnePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _OnePageState createState() => _OnePageState();
}

class _OnePageState extends State<OnePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Principal"),
        ),
        body: Container(
          color: Colors.white,
          child: Card(
            margin: EdgeInsets.fromLTRB(5, 15, 5, 350),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
            elevation: 3,
            child: Column(
              children: <Widget>[
                new Image.asset('images/asd.jpeg',width: 500,height: 100, fit: BoxFit.cover,),
                Container(
                    padding: EdgeInsets.fromLTRB(10, 15, 10, 15),
                    child: Column(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Foto con animacion Hero",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 12),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Aqui va el subtitulo, descripcion de la card",
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                        ),
                      ],
                    )),
                Container(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: FlatButton(
                        splashColor: Colors.indigo,
                        color: Colors.white,
                        onPressed:() {
                         Navigator.push(context, MaterialPageRoute(builder: (context) => TwoPage() ));
                        },
                        child: Text(
                          "VER MAS",
                          style: TextStyle(color: Colors.indigo),
                        )
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
