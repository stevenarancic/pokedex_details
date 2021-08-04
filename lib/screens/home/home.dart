import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokedex_details/screens/home/widgets/extension_string.dart';
import 'package:pokedex_details/screens/home/widgets/pokemon_data.dart';
import 'package:pokedex_details/styles.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: redTheme,
        leading: Image.asset("assets/images/logo.png"),
        title: Text(
          "Charmander #004",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(22.0),
                child: Image.asset(
                  "assets/images/charmander.png",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: Text(
                "Tem preferência por coisas quentes. Quando chove, diz-se que o vapor jorra da ponta da cauda.",
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              margin: EdgeInsets.all(22),
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all(
                  Radius.circular(8.0),
                ),
                color: blueTheme,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          PokemonData(
                            type: "Altura",
                            value: "0.6",
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            "Tipo",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          ExtensionString(
                            elementText: "Fogo",
                            backgroundColor: orangeTheme,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          PokemonData(
                            type: "Peso",
                            value: "8.5 kg",
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          PokemonData(
                            type: "Habilidade",
                            value: "Chama",
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
