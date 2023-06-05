import 'package:agenda_contatos/Model/contato.dart';

class ContatoService {
  // Cria a lista de Contatos
  static List<Contato> contatos = [];

  // Método para Cadastrar Contatos na Agenda
  String cadastrarContato(Contato contato) {
    contatos.add(contato);
    
    return "Novo contato: ${contato.nome} ${contato.sobrenome}";
  }

  // Método para Buscar todos os Contatos registrados
  List listarContato() {
   
    contatos = [
     
      Contato(id: 1,
       nome: "Matheus ",
       sobrenome: "Fernandes",
       email: "Matheus.fernandes@email.com",
       fone: "(51) 98100882129",
       foto: "fotos/1.jpeg"),

       Contato(id: 2,
       nome: "Joao",
       sobrenome: "Roleman",
       email: "Joao.roleman@email.com",
       fone: "(48) 9810542356",
       foto: "fotos/2.jpeg"),

        Contato(id: 3,
       nome: "Isabelle ",
       sobrenome: "Rodrigues ",
       email: "IssabelleRodrigueAlves@rhyta.com",
       fone: "(48) 9810542356",
       foto: "fotos/3.jpeg"),

        Contato(id: 4,
       nome: "Luis ",
       sobrenome: "Martins ",
       email: "LuisMartinsCunha@dayrep.com",
       fone: "(48) 9810542356",
       foto: "fotos/4.jpeg"),

        Contato(id: 5,
       nome: "Gabriela ",
       sobrenome: "Carvalho",
       email: "GabrielaBarbosaCarvalho@armyspy.com",
       fone: "(48) 9810542356",
       foto: "fotos/5.jpg"),

        Contato(id: 6,
       nome: "Marcos ",
       sobrenome: "Sousa",
       email: "MarcosRodriguesSousa@teleworm.us",
       fone: "(48) 9810542356",
       foto: "fotos/6.jpg"),

        Contato(id: 7,
       nome: "Emilly ",
       sobrenome: "Pereira",
       email: "EmillyDiasPereira@rhyta.com",
       fone: "(48) 9810542356",
       foto: "fotos/7.jpg"),

       

       ];


    return contatos;
  }
}