import 'dart:io';
import 'package:baseconhecimentoti_app/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:url_launcher/url_launcher.dart';

class Internet extends StatefulWidget {
  @override
  _InternetState createState() => _InternetState();
}

class _InternetState extends State<Internet> {
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
                  'ajudar você com Problemas para se\n'
                  'Conectar à Internet:\n',
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            TextButton.icon(
              icon: Icon(Icons.link),
              label: Text('Leia um tutorial no Site'),
              onPressed: ()=>_launchLink('https://support.microsoft.com/pt-br/windows/corrigir-problemas-de-conex%C3%A3o-de-rede-no-windows-10-166a28c4-14c1-bdb1-473c-09c1571455d8#:~:text=Selecione%20Iniciar%20%3E%20Configura%C3%A7%C3%B5es%20%3E%20Rede%20e,Solu%C3%A7%C3%A3o%20de%20problemas%20de%20rede.'),
            ),
            TextButton.icon(
              icon: Icon(FontAwesome.youtube, color: Colors.red,),
              label: Text('Veja um tutorial em Vídeo'),
              onPressed: ()=>_launchLink('https://www.youtube.com/watch?v=FdofxE52DCk'),
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



