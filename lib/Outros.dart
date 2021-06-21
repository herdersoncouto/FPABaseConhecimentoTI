import 'package:baseconhecimentoti_app/Outros_CamMic.dart';
import 'package:baseconhecimentoti_app/Outros_Impressoras.dart';
import 'package:baseconhecimentoti_app/Outros_Internet.dart';
import 'package:baseconhecimentoti_app/Outros_PCLento.dart';
import 'package:baseconhecimentoti_app/Sipac_ConsulProcesso.dart';
import 'package:baseconhecimentoti_app/main.dart';
import 'package:flutter/material.dart';


class Outros extends StatefulWidget {
  @override
  _OutrosState createState() => _OutrosState();
}

class _OutrosState extends State<Outros> {

  int _escolhaUsuario;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Opções para Outros Serviços"),
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
                title: Text("Problemas com Impressoras") ,
                value: 1,
                groupValue: _escolhaUsuario,
                onChanged: (int escolha){
                  setState(() {
                    _escolhaUsuario = escolha;
                  });
                }
            ),
            RadioListTile(
                title: Text("Meu Computador está lento") ,
                value: 2,
                groupValue: _escolhaUsuario,
                onChanged: (int escolha){
                  setState(() {
                    _escolhaUsuario = escolha;
                  });
                }
            ),
            RadioListTile(
                title: Text("Problemas para se Conectar com a Internet"),
                value: 3,
                groupValue: _escolhaUsuario,
                onChanged: (int escolha){
                  setState(() {
                    _escolhaUsuario = escolha;
                  });
                }
            ),
            RadioListTile(
                title: Text("Problemas com Câmera e Microfone no Google Meet"),
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
                              builder: (context) => Impressoras()
                          )
                      );
                    }
                      else if(_escolhaUsuario == 2){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PCLento()
                          )
                      );
                    }
                       else if(_escolhaUsuario == 3){
                       Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Internet()
                          )
                      );
                    }
                       else if(_escolhaUsuario == 4){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CamMic()
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



