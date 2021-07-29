import 'package:flutter/material.dart';
import 'package:pokedex_details/styles.dart';

class PokemonData extends StatelessWidget {
  final String type;
  final String value;

  PokemonData({
    required this.type,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: blueTheme,
      child: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Column(
          children: [
            Text(
              this.type,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Text(
              this.value,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
