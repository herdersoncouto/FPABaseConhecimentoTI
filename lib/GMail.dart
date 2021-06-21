import 'package:baseconhecimentoti_app/GMail_AddConta.dart';
import 'package:baseconhecimentoti_app/GMail_CriaAss.dart';
import 'package:baseconhecimentoti_app/GMail_MudaSenha.dart';
import 'package:baseconhecimentoti_app/GMail_RespAut.dart';
import 'package:baseconhecimentoti_app/main.dart';
import 'package:flutter/material.dart';


class GMail extends StatefulWidget {
  @override
  _GMailState createState() => _GMailState();
}

class _GMailState extends State<GMail> {

  int _escolhaUsuario;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Opções para GMail"),
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
                title: Text("Criar uma Assinatura") ,
                value: 1,
                groupValue: _escolhaUsuario,
                onChanged: (int escolha){
                  setState(() {
                    _escolhaUsuario = escolha;
                  });
                }
            ),
            RadioListTile(
                title: Text("Resposta automática de férias") ,
                value: 2,
                groupValue: _escolhaUsuario,
                onChanged: (int escolha){
                  setState(() {
                    _escolhaUsuario = escolha;
                  });
                }
            ),
            RadioListTile(
                title: Text("Mudar ou redefinir senha"),
                value: 3,
                groupValue: _escolhaUsuario,
                onChanged: (int escolha){
                  setState(() {
                    _escolhaUsuario = escolha;
                  });
                }
            ),
            RadioListTile(
                title: Text("Adicionar outra conta de e-mail ao app Gmail"),
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
                              builder: (context) => CriaAss()
                          )
                      );
                    }
                      else if(_escolhaUsuario == 2){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RespAut()
                          )
                      );
                    }
                      else if(_escolhaUsuario == 3){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MudaSenha()
                          )
                      );
                    }
                      else if(_escolhaUsuario == 4){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AddConta()
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



