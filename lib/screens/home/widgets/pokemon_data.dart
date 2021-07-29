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
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            Text(this.type),
            Text(this.value),
          ],
        ),
      ),
    );
  }
}
