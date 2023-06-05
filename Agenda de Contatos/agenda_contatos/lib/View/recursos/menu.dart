// ignore_for_file: unnecessary_new

import 'package:agenda_contatos/View/busca.dart';
import 'package:agenda_contatos/View/home.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MenuDrawer extends StatelessWidget {
  //dados do banco de dados
  final String usuario = "Matheus Fernandes";
  final String email = "mateloender@gmail.com";
  final String fotoPerfil = 'fotos/perfil.png';
  

  Text mostrarTitulo(String texto){
    return Text(
      texto,
      style: TextStyle(
        fontSize: 18
      ),
    );
  }

  @override
  Widget build(BuildContext context){
    return Drawer(
       child: ListView(
        children: [
          // Foto e Informações do usuário
          new UserAccountsDrawerHeader(
            accountName: Text(usuario),
            accountEmail: Text(email),
            currentAccountPicture: CircleAvatar(
              child: ClipRRect(
                child: Image.asset(fotoPerfil),
                borderRadius: BorderRadius.circular(50)
              )
            )
          ),


        // Contatos
         new ListTile(
          title: mostrarTitulo("Contatos"),
          subtitle: Text("Lista de Contatos"),
          trailing: FaIcon(FontAwesomeIcons.arrowRight),
          leading: FaIcon(
            FontAwesomeIcons.addressBook, 
           color: Colors.blue.shade300,
           size: 45,),

           onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => new Busca()
                )
              );
           }
          
        ),


        // Busca
         new ListTile(
          title: mostrarTitulo("Procurar Contatos"),
          subtitle: Text("Buscar Contatos"),
          trailing: FaIcon(FontAwesomeIcons.arrowRight),
          leading: FaIcon(
            FontAwesomeIcons.magnifyingGlass, 
           color: Colors.teal.shade300,
           size: 45,),

           onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => new Busca()
                )
              );
           }
          
        ),

        // Sair


                 new ListTile(
          title: mostrarTitulo("Favoritos"),
          subtitle: Text("Contatos Favoritos"),
          trailing: FaIcon(FontAwesomeIcons.arrowRight),
          leading: FaIcon(
            FontAwesomeIcons.solidStar, 
           color: Colors.yellow.shade600,
           size: 45,),

           onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => new Home()
                )
              );
           }
          
        ),

        ]
      ),
    );
  }
}