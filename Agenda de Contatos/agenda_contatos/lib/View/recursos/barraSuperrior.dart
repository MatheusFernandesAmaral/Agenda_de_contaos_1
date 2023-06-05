import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BarraSuperior extends AppBar{
  BarraSuperior() : super(
    automaticallyImplyLeading: false, //esconde o icone do menu 
    centerTitle: true,
    leading: Builder(
      builder: (BuildContext context ) {
        return IconButton(
          icon: FaIcon(
            FontAwesomeIcons.bars
          ),

          //abre o menu
          onPressed: () => Scaffold.of(context).openDrawer()
      
      );
      }
    ),

    //titulo
    title: Text("Cadastrar Contato",
    style: TextStyle(
      color: Colors.orange.shade800,
      fontSize: 28
    )
    ),
    //Menu do icone
    iconTheme: IconThemeData(
      color: Colors.orange.shade800
    )
  );
}