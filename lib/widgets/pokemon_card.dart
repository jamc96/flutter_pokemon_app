import 'package:flutter/material.dart';
import 'package:pokemon/models/pokemon.dart';
import 'package:pokemon/screens/pokemon_detail.dart';

class PokemonCard extends StatelessWidget {
  final Pokemon pokemon;
  const PokemonCard({Key key, this.pokemon}) : super(key: key);

  Widget _buildTypes(List<dynamic> types) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: types
          .map((type) => Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 6, horizontal: 15),
                  decoration: BoxDecoration(
                    color: Colors.white24,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Text(
                    type,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ))
          .toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => PokemonDetailScreen(
            pokemon: pokemon,
          ),
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: pokemon.color,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
                color: Colors.black26,
                offset: Offset(0.0, 2.0),
                blurRadius: 6.0),
          ],
        ),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 15.0, 10.0, 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    pokemon.name,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  _buildTypes(pokemon.types),
                ],
              ),
            ),
            Positioned(
              bottom: 0.0,
              right: 0.0,
              child: Image(
                width: 95.0,
                image: NetworkImage(
                    'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/i/f720bb6e-b303-4877-bffb-d61df0ab183f/d3b98cf-4fc5c76b-2a99-47fc-98b6-d7d4ee8d9d9f.png'),
                color: Colors.white24,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 10.0,
              right: 5.0,
              child: Hero(
                tag: pokemon.imageUrl,
                child: Image(
                  width: 80.0,
                  image: NetworkImage(pokemon.imageUrl),
                  // color: Colors.black45,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
