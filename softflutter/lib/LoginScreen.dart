import 'package:flutter/material.dart';
import 'package:softflutter/ApiFuntions/Login.dart';
import 'package:flutter/services.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
class LoginScreenPage extends StatefulWidget {
  LoginScreenPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _LoginScreenPageState createState() => _LoginScreenPageState();
}

class _LoginScreenPageState extends State<LoginScreenPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      margin: EdgeInsets.fromLTRB(25, 90, 25, 25),
      child: ListView(
        children: <Widget>[
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Hello",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 42),
            ),
          ),
          Align(
              alignment: Alignment.centerLeft,
              child: Wrap(
                children: <Widget>[
                  Text(
                    "There",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 42),
                  ),
                  Text(
                    ".\n",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                        fontSize: 42),
                  )
                ],
              )),
          Align(
            alignment: Alignment.center,
            child: new TextField(
              controller: _emailController,
              decoration: new InputDecoration(
                  // hintText: "SARAH@SPOTIFY.COM",
                  // hintStyle:  TextStyle(fontWeight: FontWeight.bold, color: Colors.black,fontSize: 14),
                  labelText: "EMAIL",
                  labelStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                      fontSize: 14),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                    //  when the TextFormField in unfocused
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                    //  when the TextFormField in focused
                  ),
                  border: UnderlineInputBorder()),
              keyboardType: TextInputType.text,
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 40, 0, 0),
            child: Align(
              alignment: Alignment.center,
              child: new TextField(
                controller: _passwordController,
                decoration: new InputDecoration(
                    hintText: "PASSWORD",
                    hintStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                        fontSize: 14),
                    labelStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                        fontSize: 16),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                      //  when the TextFormField in unfocused
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                      //  when the TextFormField in focused
                    ),
                    border: UnderlineInputBorder()),
                keyboardType: TextInputType.text,
                obscureText: true,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                "Forgot Password",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                    fontSize: 14),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: Align(
              child: RaisedButton(
                onPressed:() {
                  SystemChannels.textInput.invokeMethod('TextInput.hide');
                  requestLoginAPI(context, _emailController.text, _passwordController.text);

                },
                child: Text("LOGIN",style: TextStyle(color: Colors.white, fontSize: 14),

                ),
                color: Colors.green,
                padding: EdgeInsets.fromLTRB(130, 15, 130, 15),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: Align(
              child: RaisedButton(
                onPressed:() {},
                child: Wrap(
                  children: <Widget>[
                new Image.asset(
                'images/facebook.png',
                  width: 18,
                  height: 18,

                ),
                    Text("  Log in with Facebook",style: TextStyle(color: Colors.black, fontSize: 12),

                    ),
                  ],

                ),
                color: Colors.white,
                padding: EdgeInsets.fromLTRB(70, 15, 70, 12),
                shape: OutlineInputBorder(borderRadius: BorderRadius.circular(25),borderSide: BorderSide(color: Colors.black)),

              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Wrap(
                children: <Widget>[
                  Text("New to Spotify ? ",style: TextStyle(color: Colors.black, fontSize: 10),),
                  Text("Register",style: TextStyle(color: Colors.green, fontSize: 10),),
                ],
              )
            ),
          ),
        ],
      ),
    ));
  }
}
