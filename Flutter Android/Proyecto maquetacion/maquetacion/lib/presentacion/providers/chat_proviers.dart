import 'package:flutter/material.dart';
import 'package:si_no_app/dominio/entidades/mensajes.dart';

class ChatProviers extends ChangeNotifier{

List<Mensaje> mensajeLista = [
Mensaje(text: 'Mensaje 1', deQuien: DeQuien.mio),
Mensaje(text: 'Mensaje 2', deQuien: DeQuien.mio),
Mensaje(text: 'Mensaje 3', deQuien: DeQuien.el),
];

Future<void> sendMenssage (String text) async{

  final newMensaje = Mensaje(text: text, deQuien: DeQuien.mio);
  mensajeLista.add(newMensaje);

  notifyListeners();
}

}