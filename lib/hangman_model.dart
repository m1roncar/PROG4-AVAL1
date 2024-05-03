import 'package:flutter/material.dart';
import 'package:aval1/keyboard_model.dart';
import 'dart:math';

    final Map<String, String> wordList = {
      'APPLE': 'A fruit with red/green skin',
      'SKYSCRAPER': 'The tallest types of buildings',
      'COMPUTER':
          'A programmable machine that follows logic/arithmetic operations',
      'LIGHT BULB': 'A source of artificial light installed in sockets',
      'PIZZA': 'One of the most famous italian foods',
      'MOVIE THEATER': 'A place that exhibits movies',
      'JUNE': 'A specific month of the year',
      'THE GODFATHER':
          'Winner of 1973 Oscar ceremony for: Best Picture, Best Actor and Best Adapted Screenplay',
      'CLOCK': 'A device that counts the time',
      'GUITAR': 'A common string instrument'
    };


    final List<String> choosedOption =
        (wordList.keys.elementAt(Random().nextInt(10))).split('');


    int status = 1;




class HangmanModel extends StatelessWidget {
  const HangmanModel({super.key});

  @override
  Widget build(BuildContext context) {
 

    List<Widget> spaceRender = List.generate(
        choosedOption.length,
        (index) => Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Visibility(replacement: 
                Padding(
                  padding: const EdgeInsets.only(bottom: 115.0),
                  child: Transform.rotate(
                    angle: 150 / 360,
                    child: Container(
                      decoration: const BoxDecoration(
                          color: Colors.black, shape: BoxShape.rectangle),
                      width: 3,
                      height: 30,
                    ),
                  ),
                ), child: Text(choosedOption[index])),
            ),
        growable: false);

    return Scaffold(
        body: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 100.0, top: 150.0),
          child: Image.asset(
            'assets/images/status/$status.png',
            width: 200,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [for (Widget space in spaceRender) space],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 50.0),
          child: ConstrainedBox(
              constraints: BoxConstraints.tight(const Size.fromHeight(100)),
              child: const KeyLetter()),
        ),
        const Card(
             child: Text("Mairon Carvalho Fortes")
        ),
      ],
      
    ));
  }
}
