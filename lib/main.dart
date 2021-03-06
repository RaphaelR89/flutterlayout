// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() => runApp(MeuApp());

// ignore: use_key_in_widget_constructors
class MeuApp extends StatelessWidget {
  callAction() {
    print('clicou call');
  }

  mapAction() {
    print('clicou mapa');
  }

  shareAction() {
    print('clicou share');
  }

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
                  Botao(icon: Icons.call, text: "Ligar", onPress: callAction),
                  Botao(
                      icon: Icons.location_on,
                      text: "Mapa",
                      onPress: mapAction),
                  Botao(
                      icon: Icons.share,
                      text: "Compartilhar",
                      onPress: shareAction)
                ],
              )),
              Container(
                  padding: EdgeInsets.all(20),
                  child: Text(
                      'O Muro das Lamenta????es (ou Kotel, em hebraico) era parte do edif??cio mais deslumbrante que Jerusal??m j?? teve, o Segundo Templo, constru??do pelo grande rei Herodes.O Segundo Templo foi destru??do no ano 70 dC e, apesar da destrui????o que ocorreu, as quatro paredes de suporte do Monte do Templo permaneceram em p??. Ao longo das gera????es desde a destrui????o do Templo, o Muro das Lamenta????es foi o vest??gio mais pr??ximo do local dos santu??rios do templo - um lugar onde somente os sumos sacerdotes judeus eram autorizados a entrar, porque ali eles acreditavam que Deus estava presente. Os vest??gios reais do Templo podem ser encontrados nos t??neis do Muro das Lamenta????es, uma extraordin??ria viagem atrav??s do tempo.'))
            ],
          )),
    );
  }
}

class Botao extends StatelessWidget {
  Botao({required this.onPress, required this.icon, required this.text});

  final VoidCallback onPress;
  IconData icon;
  var text;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        onPressed: onPress,
        child: Column(children: [Icon(icon, color: Colors.blue), Text(text)]),
      ),
    );
  }
}
