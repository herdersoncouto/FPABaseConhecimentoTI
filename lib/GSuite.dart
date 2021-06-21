import 'package:baseconhecimentoti_app/GDrive.dart';
import 'package:baseconhecimentoti_app/GMail.dart';
import 'package:baseconhecimentoti_app/main.dart';
import 'package:flutter/material.dart';

import 'Classroom.dart';
import 'GMeet.dart';

class GSuite extends StatefulWidget {
  @override
  _GSuiteState createState() => _GSuiteState();
}

class _GSuiteState extends State<GSuite> {

  int _escolhaUsuario;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Opções para GSuite"),
          backgroundColor: Colors.blueAccent
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Text(
              "\n\nCom qual aplicativo da GSuite você\n está enfrentando problema?\n",
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            RadioListTile(
                title: Text("Google Drive") ,
                value: 1,
                groupValue: _escolhaUsuario,
                onChanged: (int escolha){
                  setState(() {
                    _escolhaUsuario = escolha;
                  });
                }
            ),
            RadioListTile(
                title: Text("Google Classroom") ,
                value: 2,
                groupValue: _escolhaUsuario,
                onChanged: (int escolha){
                  setState(() {
                    _escolhaUsuario = escolha;
                  });
                }
            ),
            RadioListTile(
                title: Text("Google Meet") ,
                value: 3,
                groupValue: _escolhaUsuario,
                onChanged: (int escolha){
                  setState(() {
                    _escolhaUsuario = escolha;
                  });
                }
            ),
            RadioListTile(
                title: Text("Gmail") ,
                value: 4,
                groupValue: _escolhaUsuario,
                onChanged: (int escolha){
                  setState(() {
                    _escolhaUsuario = escolha;
                  });
                }
            ),
            Divider(
              color: Colors.white,
            ),
            ButtonTheme(
              height:40,
              minWidth:200,
              child:RaisedButton(
                  shape: new RoundedRectangleBorder(borderRadius:
                  new BorderRadius.circular(30.0)),
                  child: Text(
                    "Continuar",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  color: Colors.green,
                  onPressed: (){
                    if (_escolhaUsuario == 1) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => GDrive()
                          )
                      );
                    }
                    else if(_escolhaUsuario == 2){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Classroom()
                          )
                      );
                    }
                    else if(_escolhaUsuario == 3){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => GMeet()
                          )
                      );
                    }
                    else if(_escolhaUsuario == 4){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => GMail()
                          )
                      );
                    }

                  }
              ),
            ),

            Divider(
              color: Colors.white,
            ),
            ButtonTheme(
              height:40,
              minWidth:150,
              child: RaisedButton(
                  shape: new RoundedRectangleBorder(borderRadius:
                  new BorderRadius.circular(30.0)),
                  child: Text(
                    "Início",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  color: Colors.red,
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Home()
                        )
                    );

                    //print("Resultado: " + _escolhaUsuario.toString() );
                  }
              ),
            ),
          ],
        ),
      ),
    );
  }
}



