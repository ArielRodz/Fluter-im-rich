import 'package:flutter/material.dart';

import 'GeneradorCitas.dart';
import 'cita.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  String texto;
  String autor;
  Color color;

  void insertarCita()
  {
    Cita cita = GeneradorCitas().obtenerCitaAleatoria();
    this.texto = cita.text;
    this.autor = cita.autor;
    this.color = cita.color;
  }

  @override
  Widget build(BuildContext context) {
    insertarCita();
    return Scaffold(
      backgroundColor: Colors.blueGrey[600],
      body: Center(        
        child: Column(          
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(
              image: AssetImage('images/diamond.png'),
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: 
                Column(children: <Widget>[

                  Text(texto.toString(),style: TextStyle(fontSize: 20,color: Colors.white)),
                  SizedBox(height: 15),
                  Text(autor.toString(),style: TextStyle(fontSize: 10,color: Colors.white)),
                
                ],
              ),
            ),
            

            SizedBox(height: 30),
            RaisedButton(
              color: color,
              onPressed: () {
                setState(() {
                  insertarCita();
                });

              },
              child: Text(
                  'Generar cita',
                  style: TextStyle(fontSize: 15,color: Colors.white),
              ),

            ),

          ],
        ),

      ),
    );
  }
}
