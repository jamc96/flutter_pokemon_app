import 'package:flutter/material.dart';
import 'package:pokemon/models/pokemon.dart';

class AboutGrid extends StatelessWidget {
  final Pokemon pokemon;
  const AboutGrid({Key key, this.pokemon}) : super(key: key);

  Text _buildText({String text, Color textColor}) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 15.0,
        color: textColor,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 180,
          child: GridView.count(
            crossAxisCount: 2,
            physics: NeverScrollableScrollPhysics(),
            childAspectRatio: 3 / 1,
            children: [
              _buildText(
                text: 'Species',
                textColor: Colors.grey,
              ),
              _buildText(
                text: pokemon.species,
                textColor: Colors.black,
              ),
              _buildText(
                text: 'Height',
                textColor: Colors.grey,
              ),
              _buildText(
                text: pokemon.profile.height,
                textColor: Colors.black,
              ),
              _buildText(
                text: 'Weight',
                textColor: Colors.grey,
              ),
              _buildText(
                text: pokemon.profile.weight,
                textColor: Colors.black,
              ),
              _buildText(
                text: 'Abilities',
                textColor: Colors.grey,
              ),
              _buildText(
                text: pokemon.profile.ability.join(', '),
                textColor: Colors.black,
              ),
            ],
          ),
        ),
        Text(
          'Breeding',
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          height: 150.0,
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 110,
                child: GridView.count(
                  physics: NeverScrollableScrollPhysics(),
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  // mainAxisSpacing: 10,
                  childAspectRatio: 3 / 1,
                  children: [
                    _buildText(
                      text: 'Gender',
                      textColor: Colors.grey,
                    ),
                    _buildText(
                      text: 'Female',
                      textColor: Colors.black,
                    ),
                    _buildText(
                      text: 'Egg Group',
                      textColor: Colors.grey,
                    ),
                    _buildText(
                      text: pokemon.profile.egg[0],
                      textColor: Colors.black,
                    ),
                    _buildText(
                      text: 'Egg Cycles',
                      textColor: Colors.grey,
                    ),
                    _buildText(
                      text: pokemon.profile.egg[1],
                      textColor: Colors.black,
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
