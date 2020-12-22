import 'package:flutter/material.dart';
import 'package:pokemon/models/pokemon.dart';
import 'package:pokemon/widgets/about_grid.dart';

class PokemonDetailDataScreen extends StatefulWidget {
  final Pokemon pokemon;
  const PokemonDetailDataScreen({Key key, this.pokemon}) : super(key: key);

  @override
  _PokemonDetailDataScreenState createState() =>
      _PokemonDetailDataScreenState();
}

class _PokemonDetailDataScreenState extends State<PokemonDetailDataScreen> {
  int _selectedIndex = 0;
  final List<String> _menuOptions = [
    'About',
    'Base Stats',
    'Evolution',
    'Moves',
  ];
  Widget _builmenuOptions(int index) {
    return GestureDetector(
        onTap: () {
          setState(() {
            _selectedIndex = index;
          });
        },
        child: Text(
          _menuOptions[index],
          style: TextStyle(
            color: _selectedIndex == index ? Colors.black : Colors.grey,
            fontSize: 15.0,
            fontWeight: FontWeight.w600,
          ),
        ));
  }

  _buildDetails() {
    switch (_menuOptions[_selectedIndex]) {
      case 'Base Stats':
        return Text('Base stats');
        break;
      case 'Evolution':
        return Text('Evolution');
        break;
      case 'Moves':
        return Text('Moves');
        break;
      default:
        return _buildAbout();
    }
  }

  Widget _buildAbout() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 10.0),
      margin: EdgeInsets.only(right: 80),
      child: AboutGrid(pokemon: widget.pokemon),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: _menuOptions
            .asMap()
            .entries
            .map((map) => _builmenuOptions(map.key))
            .toList(),
      ),
      Divider(height: 40.0),
      _buildDetails(),
    ]);
  }
}
