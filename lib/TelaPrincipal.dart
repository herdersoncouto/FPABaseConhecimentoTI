import 'package:baseconhecimentoti_app/GSuite.dart';
import 'package:baseconhecimentoti_app/Outros.dart';
import 'package:baseconhecimentoti_app/Sipac.dart';
import 'package:baseconhecimentoti_app/UfpeId.dart';
import 'package:baseconhecimentoti_app/main.dart';
import 'package:flutter/material.dart';

class TelaPrincipal extends StatefulWidget {
  @override
  _TelaPrincipalState createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {

  int _escolhaUsuario;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Escolha uma Opção"),
          backgroundColor: Colors.blueAccent
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Text(
              '\n\nCom qual opção abaixo você está\n tendo dificuldade?\n',
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),

            RadioListTile(
                title: Text("Google GSuite") ,
                value: 1,
                groupValue: _escolhaUsuario,
                onChanged: (int escolha){
                  setState(() {
                    _escolhaUsuario = escolha;
                  });
                }
            ),
            RadioListTile(
                title: Text("UFPE ID") ,
                value: 2,
                groupValue: _escolhaUsuario,
                onChanged: (int escolha){
                  setState(() {
                    _escolhaUsuario = escolha;
                  });
                }
            ),
            RadioListTile(
                title: Text("SIPAC") ,
                value: 3,
                groupValue: _escolhaUsuario,
                onChanged: (int escolha){
                  setState(() {
                    _escolhaUsuario = escolha;
                  });
                }
            ),
            RadioListTile(
                title: Text("Outros Serviços") ,
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
                                builder: (context) => GSuite()
                            )
                        );
                      }
                      else if(_escolhaUsuario == 2){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => UfpeId()
                            )
                        );
                      }
                      else if(_escolhaUsuario == 3){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Sipac()
                            )
                        );
                      }
                      else if(_escolhaUsuario == 4){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Outros()
                            )
                        );
                      }
                      //print("Resultado: " + _escolhaUsuario.toString() );
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



