import 'package:flutter/material.dart';
import 'package:pokedex_details/styles.dart';

class ExtensionString extends StatelessWidget {
  final String elementText;
  final Color backgroundColor;

  ExtensionString({
    required this.elementText,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.all(
          Radius.circular(8.0),
        ),
        color: this.backgroundColor,
      ),
      child: Text(
        this.elementText,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
