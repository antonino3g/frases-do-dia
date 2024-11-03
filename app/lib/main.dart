import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Frases do dia',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Instagram'),
          backgroundColor: Colors.green,
        ),
        body: Padding(
          padding: EdgeInsets.all(16),
          child: Text('Conteúdo principal'),
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.lightGreen,
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Row(
              children: [
                Text('Texto 1'),
                Text('Texto 2'),
              ],
            ),
          ),
        ),
      )));
}
