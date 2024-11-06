import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _frases = [
    "O temor do Senhor é o princípio do conhecimento, mas os insensatos desprezam a sabedoria e a instrução. - Provérbios 1:7",
    "Confia no Senhor de todo o teu coração e não te estribes no teu próprio entendimento. - Provérbios 3:5",
    "Em todo o teu caminho reconhece-o, e ele endireitará as tuas veredas. - Provérbios 3:6",
    "O homem prudente vê o perigo e se esconde, mas o insensato segue em frente e sofre as consequências. - Provérbios 22:3",
    "Mais vale um pouco com justiça do que grandes rendas com injustiça. - Provérbios 16:8",
    "Como a água reflete o rosto, assim o coração do homem reflete o homem. - Provérbios 27:19",
    "As palavras agradáveis são como favo de mel, doces para a alma e saúde para os ossos. - Provérbios 16:24",
    "Melhor é morar no canto do eirado do que com a mulher rixosa numa casa ampla. - Provérbios 21:9",
    "O coração alegre é bom remédio, mas o espírito abatido faz secar os ossos. - Provérbios 17:22",
    "A resposta branda desvia o furor, mas a palavra dura suscita a ira. - Provérbios 15:1",
    "Quem guarda a sua boca preserva a sua vida, mas quem fala demais acaba se arruinando. - Provérbios 13:3",
    "O preguiçoso deseja e nada consegue, mas os desejos do diligente são amplamente satisfeitos. - Provérbios 13:4",
    "A justiça exalta as nações, mas o pecado é o opróbrio dos povos. - Provérbios 14:34",
    "A riqueza obtida com desonestidade diminuirá, mas quem a junta aos poucos terá aumento. - Provérbios 13:11",
    "A soberba precede a destruição, e a altivez do espírito precede a queda. - Provérbios 16:18",
    "Onde não há revelação divina, o povo se desvia, mas como é feliz quem obedece à lei. - Provérbios 29:18",
    "Aquele que encobre as suas transgressões jamais prosperará, mas o que as confessa e abandona alcançará misericórdia. - Provérbios 28:13",
    "Há caminho que ao homem parece direito, mas o fim dele são os caminhos da morte. - Provérbios 14:12",
    "Melhor é ser humilde de espírito com os mansos do que repartir o despojo com os soberbos. - Provérbios 16:19",
    "Não responda ao tolo segundo a sua estultícia, para que não te faças semelhante a ele. - Provérbios 26:4"
  ];

  var _fraseGerada = "Clique abaixo para gerar uma frase!";

  void _gerarFrase() {
    var _numeroSorteado = Random().nextInt(_frases.length);

    setState(() {
      _fraseGerada = _frases[_numeroSorteado];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Frases do dia", style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("images/logo.png"),
                Text(
                  _fraseGerada,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      fontSize: 15,
                      fontStyle: FontStyle.italic,
                      color: Colors.black),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green, // Cor de fundo do botão
                    foregroundColor: Colors.white, // Cor do texto
                    textStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: _gerarFrase,
                  child: Text("Nova Frase"),
                )
              ],
            ),
          ),
        ));
  }
}
