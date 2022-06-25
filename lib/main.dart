// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() => runApp(MeuApp());

// ignore: use_key_in_widget_constructors
class MeuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: const Text("Meu primeiro App")),
          body: Column(
            children: [
              Image(image: AssetImage('images/muro.jpg')),
              Container(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Kotel',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black)),
                              Text('Jerusalem,Israel',
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.grey))
                            ]),
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.blue),
                          Text('9.876')
                        ],
                      )
                    ],
                  )),
              Container(
                  child: Row(
                children: [
                  Botao(icon: Icons.call, text: "Ligar", onPress: () {}),
                  Botao(icon: Icons.location_on, text: "Mapa", onPress: () {}),
                  Botao(icon: Icons.share, text: "Compartilhar", onPress: () {})
                ],
              )),
              Container(
                  padding: EdgeInsets.all(20),
                  child: Text(
                      'O Muro das Lamentações (ou Kotel, em hebraico) era parte do edifício mais deslumbrante que Jerusalém já teve, o Segundo Templo, construído pelo grande rei Herodes.O Segundo Templo foi destruído no ano 70 dC e, apesar da destruição que ocorreu, as quatro paredes de suporte do Monte do Templo permaneceram em pé. Ao longo das gerações desde a destruição do Templo, o Muro das Lamentações foi o vestígio mais próximo do local dos santuários do templo - um lugar onde somente os sumos sacerdotes judeus eram autorizados a entrar, porque ali eles acreditavam que Deus estava presente. Os vestígios reais do Templo podem ser encontrados nos túneis do Muro das Lamentações, uma extraordinária viagem através do tempo.'))
            ],
          )),
    );
  }
}

class Botao extends StatelessWidget {
  Botao({required this.onPress, required this.icon, required this.text});

  Function onPress;
  IconData icon;
  var text;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        onPressed: onPress(),
        child: Column(children: [Icon(icon, color: Colors.blue), Text(text)]),
      ),
    );
  }
}
