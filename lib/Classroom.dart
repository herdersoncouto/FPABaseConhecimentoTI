import 'package:baseconhecimentoti_app/Classroom_ConvAlunos.dart';
import 'package:baseconhecimentoti_app/main.dart';
import 'package:flutter/material.dart';
import 'Classroom_ArqTurma.dart';
import 'Classroom_CriaAtiv.dart';
import 'Classroom_CriaTurma.dart';


class Classroom extends StatefulWidget {
  @override
  _ClassroomState createState() => _ClassroomState();
}

class _ClassroomState extends State<Classroom> {

  int _escolhaUsuario;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Opções para Classroom"),
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
                title: Text("Criar uma turma") ,
                value: 1,
                groupValue: _escolhaUsuario,
                onChanged: (int escolha){
                  setState(() {
                    _escolhaUsuario = escolha;
                  });
                }
            ),
            RadioListTile(
                title: Text("Convidar alunos para sua turma") ,
                value: 2,
                groupValue: _escolhaUsuario,
                onChanged: (int escolha){
                  setState(() {
                    _escolhaUsuario = escolha;
                  });
                }
            ),
            RadioListTile(
                title: Text("Criar uma atividade") ,
                value: 3,
                groupValue: _escolhaUsuario,
                onChanged: (int escolha){
                  setState(() {
                    _escolhaUsuario = escolha;
                  });
                }
            ),
            RadioListTile(
                title: Text("Arquivar ou excluir uma turma") ,
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
                              builder: (context) => CriaTurma()
                          )
                      );
                    }
                    else if(_escolhaUsuario == 2){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ConvAlunos()
                          )
                      );
                    }
                    else if(_escolhaUsuario == 3){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CriaAtiv()
                          )
                      );
                    }
                    else if(_escolhaUsuario == 4){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ArqTurma()
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



