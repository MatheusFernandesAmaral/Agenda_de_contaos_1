import 'package:agenda_contatos/View/Cadastro.dart';
import 'package:agenda_contatos/View/busca.dart';
import 'package:agenda_contatos/View/recursos/barraSuperrior.dart';
import 'package:agenda_contatos/View/recursos/menu.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatefulWidget {
  @override
  State createState() => new HomeState();
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context){
   return Scaffold(

    //titulo do app
    appBar: BarraSuperior(),
 
    //Menu
    drawer: new MenuDrawer(),

     //corpo
    body: SingleChildScrollView(
      child: Column(
        children: [

      new Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(25),

        child: Column(
          children: [
            // Titulo
            new Text("Testando todo o texto",
            style: TextStyle(
              color: Color.fromRGBO(247, 243, 243, 1),
              fontSize: 24
            )
            ),

            // Botao Buscar contato
            new Builder(
              builder: (BuildContext context) {
                return ElevatedButton(
                  child: Container(
                    width: 300,
                    padding: EdgeInsets.all(16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      new FaIcon(
                        FontAwesomeIcons.search,
                        color: Colors.white,
                        size: 20,
                        ),

                        SizedBox(width: 10,),

                        new Text("Buscar Contatos",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18
                        ),
                        )
                    ]),
                  ),

                  style: ElevatedButton.styleFrom(
                    primary: Colors.orange.shade700
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                       MaterialPageRoute(builder: (context) => new Busca() ) 
                       );
                  }
              );
              }
            ),

            SizedBox(height: 25,),

            // Cadastrar Contato
            new Builder(
              builder: (BuildContext context) {
                return ElevatedButton(
                  child: Container(
                    width: 300,
                    padding: EdgeInsets.all(16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      new FaIcon(
                        FontAwesomeIcons.userPlus,
                        color: Colors.white,
                        size: 20,
                        ),

                        SizedBox(width: 10,),

                        new Text("Cadastrar Contatos",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18
                        ),
                        )

                    ]),
                  ),

                  style: ElevatedButton.styleFrom(
                    primary: Colors.orange.shade600
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                       MaterialPageRoute(builder: (context) => Cadastro() ) 
                       );
                  }
              );
              }
            ),
          ],
        ),

      )
   
      ],
      )
    ),

   );
  }
}