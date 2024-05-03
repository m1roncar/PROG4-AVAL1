import 'package:aval1/hangman_model.dart';
import 'package:flutter/material.dart';


class HangmanMainPage extends StatelessWidget {
  const HangmanMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          fontFamily: 'Inter',
          appBarTheme: const AppBarTheme(color: Colors.purple)),
          
      debugShowCheckedModeBanner: false,
      title: ('Hangman Game'),
      home: Scaffold(
        appBar: AppBar(
          title: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Hangman Game',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(width: 50, child: Image.asset('images/hangman_icon.png')),
          ]),
        ),
        body:
            const HangmanModel(),
            
              
      ),
    );
  }
}
/*
class _HangmanState extends State<HangmanGame> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration:
              const BoxDecoration(color: Colors.black, shape: BoxShape.circle),
        )
      ],
    );
  }
}
*/