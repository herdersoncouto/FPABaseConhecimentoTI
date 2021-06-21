import 'dart:io';
import 'package:baseconhecimentoti_app/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:url_launcher/url_launcher.dart';

class VrfUfpeid extends StatefulWidget {
  @override
  _VrfUfpeidState createState() => _VrfUfpeidState();
}

class _VrfUfpeidState extends State<VrfUfpeid> {
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
              'Aqui está um tutorial que pode ajudar\n'
                  'você na hora de Verificar a Existência\n'
                  'do seu UFPE.ID:\n',
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            TextButton.icon(
              icon: Icon(Icons.link),
              label: Text('Leia um tutorial no Site'),
              onPressed: ()=>_launchLink('https://otrs.ufpe.br/otrs/public.pl?Action=PublicFAQZoom;ItemID=646;ZoomBackLink=QWN0aW9uPVB1YmxpY0ZBUUV4cGxvcmVyO0NhdGVnb3J5SUQ9NTY7U29ydEJ5PVRpdGxlO09yZGVy%0APVVwO1N0YXJ0SGl0PTE%3D%0A;'),
            ),
            /*TextButton.icon(
              icon: Icon(FontAwesome.youtube, color: Colors.red,),
              label: Text('Veja um tutorial em Vídeo'),
              onPressed: ()=>_launchLink(''),
            ),*/
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



