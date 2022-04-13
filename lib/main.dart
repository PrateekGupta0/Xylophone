import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

// => arrow syntax

class XylophoneApp extends StatelessWidget {
  void sound(int index){
    final player =AudioCache();
    player.play('note$index.wav');
  }
  Expanded fun(int index,{Color color}/*named parameters*/){
    return Expanded(
      child: FlatButton(
        onPressed: (){
          sound(index);
        },
        child: Text(""),
        color: color,
      ),

    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [

              fun(1,color: Colors.red),
              fun(2,color: Colors.orange),
              fun(3,color: Colors.yellow),
              fun(4,color: Colors.green),
              fun(5,color: Colors.teal),
              fun(6,color: Colors.blue),
              fun(7,color: Colors.purple),

              
            ],
          ),
        ),
      ),
    );
  }
}
