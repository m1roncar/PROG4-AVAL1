import 'package:flutter/material.dart';

class LetterButton extends ElevatedButton {
  const LetterButton(
      {super.key,
      required super.onPressed,
      required super.child,
      required String assignedLetter,
      super.style = const ButtonStyle(
          padding:
              MaterialStatePropertyAll(EdgeInsets.only(bottom: 10, right: 5)),
          backgroundColor: MaterialStatePropertyAll(Colors.purple))});
}
