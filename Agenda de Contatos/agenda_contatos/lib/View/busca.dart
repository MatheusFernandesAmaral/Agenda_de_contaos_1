
import 'package:agenda_contatos/Model/contato.dart';
import 'package:agenda_contatos/Model/contatoService.dart';
import 'package:agenda_contatos/View/Cadastro.dart';
import 'package:agenda_contatos/View/perfil.dart';
import 'package:agenda_contatos/View/recursos/barraSuperrior.dart';
import 'package:agenda_contatos/View/recursos/menu.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Busca extends StatefulWidget {
  @override
  State createState() => new BuscaState();
}

class BuscaState extends State<Busca> {
  // objeto de model
  ContatoService service = new ContatoService();

  @override
  Widget build( BuildContext context) {

    return Scaffold(
      appBar: new BarraSuperior(),
      drawer: new MenuDrawer(),
      body: ListView.builder(
        padding: EdgeInsets.fromLTRB(8, 8, 50, 75),
        itemCount: service.listarContato().length,
        itemBuilder: (BuildContext context, int index){
          // guarda o retorno da lista 
          Contato contato = service.listarContato().elementAt(index);

          return Container(
            color: Colors.grey.shade700,
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.symmetric(horizontal: 25,vertical: 5),
            child: ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Foto
                  new ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child:  Image.asset(
                      contato.foto,// "fotos/1.jpeg",
                      width: 75,
                      height: 75,
                      fit: BoxFit.cover,
                      ),
                  ),

                  // Nome e telefone
                  new Column(
                    children: [
                      new Text(
                        contato.nome + " " + contato.sobrenome ,
                        style: TextStyle(
                          color: Colors.amber,
                          fontSize: 24
                        ),),

                        SizedBox(height: 10,),

                      new Text(contato.fone)
                    ]
                  ),
                  SizedBox(height: 5),
                ]
              ),
              trailing: IconButton(
                icon: FaIcon(FontAwesomeIcons.chevronRight),
                onPressed: () {
                  Navigator.push(context, 
                  MaterialPageRoute(
                    builder: (context) => new Perfil(id: contato.id)
                    )
                    );
                },)
            ),
          );
        } 
        ),

        // Botao Flutuante
        floatingActionButton: FloatingActionButton(
          child: FaIcon(
            FontAwesomeIcons.plus,
            color: Colors.white,
            size: 30,
            ),
            onPressed: (){
              
            Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Cadastro() ) 
                );
            }
        ),
    );
  }
}