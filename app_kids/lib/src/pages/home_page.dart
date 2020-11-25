import 'package:flutter/material.dart';

import 'package:app_kids/src/pages/incas_page.dart';
import 'package:app_kids/src/pages/mayas_page.dart';
import 'package:app_kids/src/pages/aztecas_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
              backgroundColor: Colors.yellow[700],
              title: Text('América Precolombina', style: TextStyle(color: Colors.black)), 
      ), //AppBar
      body: Center(
      child: _crearBotones(context)
      )
    );
  }


  Widget _crearBotones(context){
    return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              elevation: 5.0,
              color: Colors.yellow[700],
              textColor: Colors.black,
              padding: EdgeInsets.all(20.0),
              splashColor: Colors.red[300],
              onPressed: (){
                print("Cliquié Mayas");
                 Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => MayasPage(),
                ));
              }, 
              child: Text(
                'Mayas',
                style: TextStyle(fontSize: 40.0))),
            SizedBox(height: 20),
            RaisedButton(
              elevation: 5.0,
              color: Colors.yellow[700],
              textColor: Colors.black,
              padding: EdgeInsets.all(20.0),
              splashColor: Colors.red[300],
              onPressed: (){
                print("Cliquié Aztecas");
                 Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => AztecasPage(),
                ));
              }, 
              child: Text(
                'Aztecas',
                style: TextStyle(fontSize: 40.0))),
            SizedBox(height: 20),
            RaisedButton(
              elevation: 5.0,
              color: Colors.yellow[700],
              textColor: Colors.black,
              padding: EdgeInsets.all(20.0),
              splashColor: Colors.red[300],
              onPressed: (){
                print("Cliquié Incas");
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => IncasPage(),
                ));
              }, 
              child: Text(
                'Incas',
                style: TextStyle(fontSize: 40.0)))
          ],
        );
  }

}