import 'package:baseconhecimentoti_app/Sipac_AssDoc.dart';
import 'package:baseconhecimentoti_app/Sipac_CadProcesso.dart';
import 'package:baseconhecimentoti_app/Sipac_ConsulProcesso.dart';
import 'package:baseconhecimentoti_app/Sipac_NovosDocs.dart';
import 'package:baseconhecimentoti_app/main.dart';
import 'package:flutter/material.dart';


class Sipac extends StatefulWidget {
  @override
  _SipacState createState() => _SipacState();
}

class _SipacState extends State<Sipac> {

  int _escolhaUsuario;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Opções para SIPAC"),
          backgroundColor: Colors.blueAccent
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Text(
              '\n\nO que deseja fazer no SIPAC?\n',
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            RadioListTile(
                title: Text("Cadastrar um Processo") ,
                value: 1,
                groupValue: _escolhaUsuario,
                onChanged: (int escolha){
                  setState(() {
                    _escolhaUsuario = escolha;
                  });
                }
            ),
            RadioListTile(
                title: Text("Assinar Documentos") ,
                value: 2,
                groupValue: _escolhaUsuario,
                onChanged: (int escolha){
                  setState(() {
                    _escolhaUsuario = escolha;
                  });
                }
            ),
            RadioListTile(
                title: Text("Adicionar Novos Documentos ao Processo"),
                value: 3,
                groupValue: _escolhaUsuario,
                onChanged: (int escolha){
                  setState(() {
                    _escolhaUsuario = escolha;
                  });
                }
            ),
            RadioListTile(
                title: Text("Consultar Processo"),
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
                              builder: (context) => CadProcesso()
                          )
                      );
                    }
                      else if(_escolhaUsuario == 2){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AssDoc()
                          )
                      );
                    }
                       else if(_escolhaUsuario == 3){
                       Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => NovosDocs()
                          )
                      );
                    }
                       else if(_escolhaUsuario == 4){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ConsulProcesso()
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



