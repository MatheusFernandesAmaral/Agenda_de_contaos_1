import 'package:agenda_contatos/Model/contato.dart';
import 'package:agenda_contatos/Model/contatoService.dart';
import 'package:agenda_contatos/View/recursos/barraSuperrior.dart';
import 'package:agenda_contatos/View/recursos/menu.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Perfil extends StatelessWidget {
  // Guarda id do contato
  final int id;
  // contrutor
  Perfil({ required this.id });

  // objeto
   final ContatoService service = new ContatoService();

  @override
  Widget build (BuildContext context) {

    // obj
    Contato contato = service.listarContato().elementAt(id -1);

    return Scaffold(
      // titulo
      appBar: new BarraSuperior(),
      // menu
      drawer: MenuDrawer(),
      // coorpo
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            // foto
            new Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              new Image.asset(
                contato.foto,
                height: 350,
              )
            ],),

            SizedBox(height: 25),

            // Nome
            new Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                new Text(
                  contato.nome + "" + contato.sobrenome,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                    wordSpacing: 1,
                  ),
                )
              ],
            ),

            // SizedBox(25),

            // fone e email
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // fone
                Text(
                  contato.fone,
                  style: TextStyle(
                    color: Colors.amber,
                    fontSize: 14
                  ),
                ),

                  Text(
                  contato.email,
                  style: TextStyle(
                    color: Colors.amber,
                    fontSize: 14
                  ),
                )

              ],
            ),

            new Container(
              padding: EdgeInsets.only(top: 25,bottom: 25),
              child: Divider(height: 5),
            ),
          // açoes
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // ligar
              new Column(
                children: [
                  new FaIcon(FontAwesomeIcons.phoneFlip,
                  color: Colors.green,
                  size: 30 ),

                  SizedBox( height: 3,),

                  new Text(
                    "ligar",
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 15
                    ),
                  )
                ],
              ),

              // mensagem 

               new Column(
                children: [
                  new FaIcon(FontAwesomeIcons.solidMessage,
                  color: Colors.green,
                  size: 30 ),

                  SizedBox( height: 3,),

                  new Text(
                    "Mensagem",
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 15
                    ),
                  )
                ],
              ),

              
              // video
                   new Column(
                children: [
                  new FaIcon(FontAwesomeIcons.video,
                  color: Colors.green,
                  size: 30 ),

                  SizedBox( height: 3,),

                  new Text(
                    "Video",
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 15
                    ),
                  )
                ],
              ),

              // email

                   new Column(
                children: [
                  new FaIcon(FontAwesomeIcons.solidEnvelope,
                  color: Colors.green,
                  size: 30 ),

                  SizedBox( height: 3,),

                  new Text(
                    "email",
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 15
                    ),
                  )
                ],
              ),

            ],
          ),

          new Container(
              padding: EdgeInsets.only(top: 25,bottom: 25),
              child: Divider(height: 5),
            ),

            new Row(
              children: [
                Text("Historico de ligações ",
                style: TextStyle(
                  fontSize: 23,
                   fontWeight: FontWeight.bold,
                   color: Colors.amber.shade600),),
              ],
            ),

            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("51 981034629",
                style: TextStyle(
                  fontSize: 15,
                   fontWeight: FontWeight.bold,
                   color: Colors.white),),
                   
                  SizedBox(width: 50,),

                   new FaIcon(FontAwesomeIcons.phoneFlip,
                   color: Colors.green.shade500,),

                   new FaIcon(FontAwesomeIcons.video,
                   color: Colors.green.shade500,),
              ],
            )

          ]),
      ),
      // botao
      floatingActionButton: FloatingActionButton(
        child: FaIcon(FontAwesomeIcons.edit),

        onPressed: (){
        },

        
      ),
      
    );
    
  }
  
}