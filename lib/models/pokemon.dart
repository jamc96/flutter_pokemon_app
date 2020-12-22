import 'package:flutter/material.dart';

class Pokemon {
  final int id;
  final String name;
  final List<String> types;
  final String imageUrl;
  Profile profile;
  final String species;

  Pokemon({
    this.id,
    this.name,
    this.types,
    this.imageUrl,
    this.profile,
    this.species: "Seed Pokemon",
  });

  Color get color {
    switch (this.types[0]) {
      case 'Grass':
        return Colors.tealAccent[400];
      case 'Fire':
        return Colors.red[400];
      case 'Water':
        return Colors.blue[400];
        break;
      case 'Electric':
        return Colors.yellow[700];
      default:
        return Colors.white;
    }
  }
}

class Profile {
  final String height;
  final String weight;
  List<dynamic> egg;
  final List<dynamic> ability;

  Profile({
    this.height: "0.7 m",
    this.weight: "6.9 kg",
    this.egg,
    this.ability,
  });
}

final List<Pokemon> pokemons = [
  Pokemon(
    id: 1,
    name: "Bulbasaur",
    types: ["Grass", "Poison"],
    imageUrl:
        "https://raw.githubusercontent.com/Purukitto/pokemon-data.json/master/images/pokedex/hires/001.png",
    profile: Profile(
      height: "0.7 m",
      weight: "6.9 kg",
      ability: ["Overgrow", "Chlorophyll"],
      egg: ["Monster", "Grass"],
    ),
  ),
  Pokemon(
    id: 2,
    name: "Ivysaur",
    types: ["Grass", "Poison"],
    imageUrl:
        "https://raw.githubusercontent.com/Purukitto/pokemon-data.json/master/images/pokedex/hires/002.png",
    profile: Profile(
      height: "0.7 m",
      weight: "6.9 kg",
      ability: ["Overgrow", "Chlorophyll"],
      egg: ["Monster", "Grass"],
    ),
  ),
  Pokemon(
    id: 3,
    name: "Venusaur",
    types: ["Grass", "Poison"],
    imageUrl:
        "https://raw.githubusercontent.com/Purukitto/pokemon-data.json/master/images/pokedex/hires/003.png",
    profile: Profile(
      height: "0.7 m",
      weight: "6.9 kg",
      ability: ["Overgrow", "Chlorophyll"],
      egg: ["Monster", "Grass"],
    ),
  ),
  Pokemon(
    id: 4,
    name: "Charmander",
    types: ["Fire"],
    imageUrl:
        "https://raw.githubusercontent.com/Purukitto/pokemon-data.json/master/images/pokedex/hires/004.png",
    profile: Profile(
      height: "0.7 m",
      weight: "6.9 kg",
      ability: ["Overgrow", "Chlorophyll"],
      egg: ["Monster", "Grass"],
    ),
  ),
  Pokemon(
    id: 5,
    name: "Charmeleon",
    types: ["Fire"],
    imageUrl:
        "https://raw.githubusercontent.com/Purukitto/pokemon-data.json/master/images/pokedex/hires/005.png",
    profile: Profile(
      height: "0.7 m",
      weight: "6.9 kg",
      ability: ["Overgrow", "Chlorophyll"],
      egg: ["Monster", "Grass"],
    ),
  ),
  Pokemon(
    id: 6,
    name: "Charizard",
    types: ["Fire", "Flying"],
    imageUrl:
        "https://raw.githubusercontent.com/Purukitto/pokemon-data.json/master/images/pokedex/hires/006.png",
    profile: Profile(
      height: "0.7 m",
      weight: "6.9 kg",
      ability: ["Overgrow", "Chlorophyll"],
      egg: ["Monster", "Grass"],
    ),
  ),
  Pokemon(
    id: 7,
    name: "Squirtle",
    types: ["Water"],
    imageUrl:
        "https://raw.githubusercontent.com/Purukitto/pokemon-data.json/master/images/pokedex/hires/007.png",
    profile: Profile(
      height: "0.7 m",
      weight: "6.9 kg",
      ability: ["Overgrow", "Chlorophyll"],
      egg: ["Monster", "Grass"],
    ),
  ),
  Pokemon(
    id: 8,
    name: "Wartortle",
    types: ["Water"],
    imageUrl:
        "https://raw.githubusercontent.com/Purukitto/pokemon-data.json/master/images/pokedex/hires/008.png",
    profile: Profile(
      height: "0.7 m",
      weight: "6.9 kg",
      ability: ["Overgrow", "Chlorophyll"],
      egg: ["Monster", "Grass"],
    ),
  ),
  Pokemon(
    id: 9,
    name: "Blastoise",
    types: ["Water"],
    imageUrl:
        "https://raw.githubusercontent.com/Purukitto/pokemon-data.json/master/images/pokedex/hires/009.png",
    profile: Profile(
      height: "0.7 m",
      weight: "6.9 kg",
      ability: ["Overgrow", "Chlorophyll"],
      egg: ["Monster", "Grass"],
    ),
  ),
  Pokemon(
    id: 25,
    name: "Pickachu",
    types: ["Electric"],
    imageUrl:
        "https://raw.githubusercontent.com/Purukitto/pokemon-data.json/master/images/pokedex/hires/025.png",
    profile: Profile(
      height: "0.7 m",
      weight: "6.9 kg",
      ability: ["Overgrow", "Chlorophyll"],
      egg: ["Monster", "Grass"],
    ),
  ),
  Pokemon(
    id: 26,
    name: "Raichu",
    types: ["Electric"],
    imageUrl:
        "https://raw.githubusercontent.com/Purukitto/pokemon-data.json/master/images/pokedex/hires/026.png",
    profile: Profile(
      height: "0.7 m",
      weight: "6.9 kg",
      ability: ["Overgrow", "Chlorophyll"],
      egg: ["Monster", "Grass"],
    ),
  ),
];
