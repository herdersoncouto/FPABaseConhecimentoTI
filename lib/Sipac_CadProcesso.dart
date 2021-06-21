import 'dart:io';
import 'package:baseconhecimentoti_app/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:url_launcher/url_launcher.dart';

class CadProcesso extends StatefulWidget {
  @override
  _CadProcessoState createState() => _CadProcessoState();
}

class _CadProcessoState extends State<CadProcesso> {
  Future<void> _launchLink(String url) async{
    if(await canLaunch(url)) {
      await launch(url, forceWebView: false, forceSafariVC: false);
    }else{
      print('Não pode executar o link $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Consulte os tutoriais"),
          backgroundColor: Colors.blueAccent
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Text(
              'Aqui estão alguns tutoriais que podem\n'
                  'ajudar você a Cadastrar um Processo\n'
                  ' no SIPAC:\n',
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            TextButton.icon(
              icon: Icon(Icons.link),
              label: Text('Leia um tutorial no Site'),
              onPressed: ()=>_launchLink('https://bit.ly/2IQuZ1T'),
            ),
            TextButton.icon(
              icon: Icon(FontAwesome.youtube, color: Colors.red,),
              label: Text('Veja um tutorial em Vídeo'),
              onPressed: ()=>_launchLink('https://youtu.be/XhhntaPqpis'),
            ),
            Text(
              '\nSe você não conseguiu resolver, entre\n'
                  'em contato com o suporte técnico do\n'
                  'seu departamento através do e-mail:',
              textAlign: TextAlign.justify,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Divider(
              color: Colors.white,
            ),
            TextButton.icon(
              icon: Icon(FontAwesome.mail_forward, color: Colors.red,),
              label: Text('ddesignti@gmail.com'),
              onPressed: ()=>_launchLink('mailto:ddesignti@gmail.com'),
            ),
            Divider(
              color: Colors.white,
            ),
            ButtonTheme(
              height:40,
              minWidth:200,
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



