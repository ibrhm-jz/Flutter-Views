import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Stack(
        children: <Widget>[
          ListView(
            children: <Widget>[
              Wrap(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 80, 10, 0),
                    child: Text(
                      "¿Ya tienes una" + "\ncuenta ?",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ],
              ),
              Container(
                color: Colors.white,
                margin: EdgeInsets.fromLTRB(20, 100, 0, 0),
                child: Text(
                  "Email",
                  style: TextStyle(fontSize: 12, color: Colors.blueAccent),
                  textAlign: TextAlign.start,
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20, 0, 20, 20),
                child: TextField(
                  //controller: descriptionController,
                  decoration: InputDecoration(
                    // border: OutlineInputBorder(),
                    contentPadding: EdgeInsets.fromLTRB(0, 10, 5, 5),
                    // focusedBorder: OutlineInputBorder(
                    //   borderSide: BorderSide(color: Colors.black))
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20, 20, 0, 0),
                child: Text(
                  "Password",
                  style: TextStyle(fontSize: 12, color: Colors.blueAccent),
                  textAlign: TextAlign.start,
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20, 0, 20, 20),
                child: TextField(
                  //controller: descriptionController,
                  decoration: InputDecoration(
                    // border: OutlineInputBorder(),
                    contentPadding: EdgeInsets.fromLTRB(0, 10, 5, 5),
                    // focusedBorder: OutlineInputBorder(
                    //   borderSide: BorderSide(color: Colors.black))
                  ),
                  obscureText: true,
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: Center(
                  child: RaisedButton(
                      onPressed: () {},
                      child: Text("Iniciar sesion",
                          style:
                              TextStyle(color: Colors.white, fontSize: 14.0)),
                      color: Colors.blueAccent,
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(10.0))),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: Center(
                  child: FlatButton(
                    onPressed: () {},
                    child: Text("¿Nuevo Usuario ? Registrate Ahora",
                        style: TextStyle(
                            color: Colors.blueAccent, fontSize: 10.0)),
                    color: Colors.white30,
                  ),
                ),
              ),
            ],
          ),
          Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  margin: EdgeInsets.fromLTRB(0, 24, 0, 0) ,
                  height: 1000,
                  width: 10,
                  color: Colors.blueAccent,

                ),
              )
            ],
          )
        ],
      )),
    );
  }
}
