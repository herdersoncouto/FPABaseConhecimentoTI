import 'package:baseconhecimentoti_app/TelaPrincipal.dart';
import 'package:flutter/material.dart';


void main(){
  runApp(
      MaterialApp(
        home: Home(),
        debugShowCheckedModeBanner: false,
      )
  );
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16),
          //width: double.infinity,
           decoration: BoxDecoration(
              border: Border.all(width: 3, color: Colors.blueAccent)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset("images/logo.jpg"),
              Text(
                "Bem-Vindo ao nosso App, ele foi criado para ajudar você nas "
                    "principais dúvidas dos serviços de TI do departamento.",
                textAlign: TextAlign.justify,
                style: TextStyle(
                    fontSize: 18,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),
              ),
             ButtonTheme(
             height:60,
             minWidth:200,
              child: RaisedButton(
                shape: new RoundedRectangleBorder(borderRadius:
                 new BorderRadius.circular(30.0)),
                child: Text(
                  "Começar",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                  ),
                ),
                color: Colors.green,
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TelaPrincipal()
                      )
                  );
                },
              ),
             ),
            ],
          ),
        ),
      ),
    );
  }
}


