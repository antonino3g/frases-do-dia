import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Frases do dia',
    home: Container(
      color: Colors.white,
      child: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                print("Botão pressionado! :)");
              },
              child: Text(
                "Clique",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    decoration: TextDecoration.none),
              ))
        ],
      ),
    ),
  ));
}
