import 'package:aval1/button_model.dart';
import 'package:flutter/material.dart';
import 'package:aval1/hangman_model.dart';

    final List<String> keyboardRow1 = [
      'Q',
      'W',
      'E',
      'R',
      'T',
      'Y',
      'U',
      'I',
      'O',
      'P'
    ];

    final List<String> keyboardRow2 = [
      'A',
      'S',
      'D',
      'F',
      'G',
      'H',
      'J',
      'K',
      'L',
    ];

    final List<String> keyboardRow3 = [
      'Z',
      'X',
      'C',
      'V',
      'B',
      'N',
      'M',
    ];

class KeyLetter extends StatefulWidget {
  const KeyLetter({super.key});

  @override
  State<StatefulWidget> createState() => _KeyLetterState();
}

class _KeyLetterState extends State<KeyLetter> {



  @override
  Widget build(BuildContext context) {

    List<Widget> letterRenderTop = List.generate(
        keyboardRow1.length,
        (index) => (ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 27),
            child: LetterButton(
                assignedLetter: keyboardRow1[index],
                onPressed: () {
                  setState(() {
                    if (choosedOption.contains(keyboardRow1[index]) == true) {
                      debugPrint(keyboardRow1[index]);
                    }
                  });
                },
                child: Text(keyboardRow1[index])))),
        growable: false);

    List<Widget> letterRenderMid = List.generate(
        keyboardRow2.length,
        (index) => (ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 27),
            child: LetterButton(
                assignedLetter: keyboardRow2[index],
                onPressed: () {
                  setState(() {
                    if (choosedOption.contains(keyboardRow2[index]) == true) {
                      debugPrint(keyboardRow2[index]);
                    }
                  });
                },
                child: Text(keyboardRow2[index])))),
        growable: false);

    List<Widget> letterRenderBottom = List.generate(
        keyboardRow3.length,
        (index) => (ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 27),
            child: LetterButton(
                assignedLetter: (keyboardRow3[index]),
                onPressed: () {
                  setState(() {
                    if (choosedOption.contains(keyboardRow3[index]) == true) {
                      debugPrint(keyboardRow3[index]);
                    }
                  });
                },
                child: Text(keyboardRow3[index])))),
        growable: false);

    return Scaffold(
        body: Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [for (Widget letter in letterRenderTop) letter],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [for (Widget letter in letterRenderMid) letter],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [for (Widget letter in letterRenderBottom) letter],
      ),
    ]));
  }
}
