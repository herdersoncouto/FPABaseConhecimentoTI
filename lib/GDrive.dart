import 'package:baseconhecimentoti_app/GDrive_CompDoc.dart';
import 'package:baseconhecimentoti_app/main.dart';
import 'package:flutter/material.dart';
import 'GDrive_CriaDoc.dart';
import 'GDrive_RestDados.dart';
import 'GDrive_SincBackup.dart';

class GDrive extends StatefulWidget {
  @override
  _GDriveState createState() => _GDriveState();
}

class _GDriveState extends State<GDrive> {
  int _escolhaUsuario;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Opções para Google Drive"),
          backgroundColor: Colors.blueAccent),
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
                title: Text("Compartilhar um documento"),
                value: 1,
                groupValue: _escolhaUsuario,
                onChanged: (int escolha) {
                  setState(() {
                    _escolhaUsuario = escolha;
                  });
                }),
            RadioListTile(
                title: Text("Sicronização e Backup"),
                value: 2,
                groupValue: _escolhaUsuario,
                onChanged: (int escolha) {
                  setState(() {
                    _escolhaUsuario = escolha;
                  });
                }),
            RadioListTile(
                title:
                    Text("Criar um documento (Docs, Planilhas, Formulários)"),
                value: 3,
                groupValue: _escolhaUsuario,
                onChanged: (int escolha) {
                  setState(() {
                    _escolhaUsuario = escolha;
                  });
                }),
            RadioListTile(
                title: Text("Restaurar Dados"),
                value: 4,
                groupValue: _escolhaUsuario,
                onChanged: (int escolha) {
                  setState(() {
                    _escolhaUsuario = escolha;
                  });
                }),
            Divider(
              color: Colors.white,
            ),
            ButtonTheme(
              height: 40,
              minWidth: 200,
              child: RaisedButton(
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0)),
                  child: Text(
                    "Continuar",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  color: Colors.green,
                  onPressed: () {
                    if (_escolhaUsuario == 1) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => CompDoc()));
                    } else if (_escolhaUsuario == 2) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SincBackup()));
                    } else if (_escolhaUsuario == 3) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => CriaDoc()));
                    } else if (_escolhaUsuario == 4) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => RestDados()));
                    }
                  }),
            ),
            Divider(
              color: Colors.white,
            ),
            ButtonTheme(
              height: 40,
              minWidth: 150,
              child: RaisedButton(
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0)),
                  child: Text(
                    "Início",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  color: Colors.red,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Home()));

                    //print("Resultado: " + _escolhaUsuario.toString() );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
