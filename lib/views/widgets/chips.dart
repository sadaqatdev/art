import 'package:flutter/material.dart';



class CategoryChipHome extends StatefulWidget {


  @override
  _CategoryChipHomeState createState() => new _CategoryChipHomeState();
}

class _CategoryChipHomeState extends State<CategoryChipHome>
    with TickerProviderStateMixin {
  int _selectedIndex ;

  List<String> _options = [
    "All",
    "Painting",
    "Textile",
    "Decoration",
  ];

  Widget _buildChips() {
    List<Widget> chips = new List();

    for (int i = 0; i < _options.length; i++) {
      ChoiceChip choiceChip = ChoiceChip(
        selected: _selectedIndex == i,
        label: Text(_options[i], style: TextStyle(color: Colors.white)),
        elevation: 5,
        pressElevation: 5,
        shadowColor: Colors.teal,
        backgroundColor: Colors.black54,
        selectedColor: Colors.blue,
        onSelected: (bool selected) {
          setState(() {
            if (selected) {
              _selectedIndex = i;
            }
          });
        },
      );

      chips.add(Padding(
          padding: EdgeInsets.symmetric(horizontal: 10), child: choiceChip));
    }

    return ListView(
      // This next line does the trick.
      scrollDirection: Axis.horizontal,
      children: chips,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(bottom: 10.0),
        child: Column(
          children: <Widget>[
            Container(
              height: 50,
              child: Center(child: _buildChips()),
            ),
          ],
        ));
  }
}


class SubCategoryChip extends StatefulWidget {



  @override
  _SubCategoryChipState createState() => new _SubCategoryChipState();
}

class _SubCategoryChipState extends State<SubCategoryChip>
    with TickerProviderStateMixin {

  int _selectedIndex = 0;
  List<String> _options = [
    "All",
    "Acrylic",
    "Oil",
    "Abstract",
  ];

  Widget _buildChips() {
    List<Widget> chips = List();

    for (int i = 0; i < _options.length; i++) {
      ChoiceChip choiceChip = ChoiceChip(
        selected: _selectedIndex == i,
        label: Text(_options[i], style: TextStyle(color: Colors.white)),
        elevation: 10,
        pressElevation: 5,
        shadowColor: Colors.teal,
        backgroundColor: Colors.black54,
        selectedColor: Colors.blue,
        onSelected: (bool selected) {
          setState(() {
            if (selected) {
              _selectedIndex = i;

            }
          });
        },
      );

      chips.add(Padding(
          padding: EdgeInsets.symmetric(horizontal: 10), child: choiceChip));
    }

    return ListView(
      // This next line does the trick.
      scrollDirection: Axis.horizontal,
      children: chips,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(bottom: 10.0),
        child: Column(
          children: <Widget>[
            Container(
              height: 50,
              child: _buildChips(),
            ),
          ],
        ));
  }
}


class SelectChip extends StatefulWidget {
  @override
  _SelectChipState createState() => new _SelectChipState();
}

class _SelectChipState extends State<SelectChip> with TickerProviderStateMixin {
  int _selectedIndex;
  List<String> _options = [
    "Paiting",
    "All",
    "Textile",
    "Decoration",
  ];

  Widget _buildChips() {
    List<Widget> chips = new List();

    for (int i = 0; i < _options.length; i++) {
      ChoiceChip choiceChip = ChoiceChip(
        selected: _selectedIndex == i,
        label: Text(_options[i], style: TextStyle(color: Colors.white)),
        elevation: 5,
        pressElevation: 5,
        shadowColor: Colors.teal,
        backgroundColor: Colors.black54,
        selectedColor: Colors.blue,
        onSelected: (bool selected) {
          setState(() {
            if (selected) {
              _selectedIndex = i;
            }
          });
        },
      );

      chips.add(Padding(
          padding: EdgeInsets.symmetric(horizontal: 10), child: choiceChip));
    }

    return ListView(
      // This next line does the trick.
      scrollDirection: Axis.horizontal,
      children: chips,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(bottom: 15.0, top: 10.0),
        child: Column(
          children: <Widget>[
            Container(
              height: 30,
              child: _buildChips(),
            ),
          ],
        ));
  }
}


class CategoryChip extends StatefulWidget {
  @override
  _CategoryChipState createState() => new _CategoryChipState();
}

class _CategoryChipState extends State<CategoryChip>
    with TickerProviderStateMixin {
  int _selectedIndex;
  List<String> _options = [
    "Oil",
    "Pencil",
    "Art Calligraphy",
  ];

  Widget _buildChips() {
    List<Widget> chips = new List();

    for (int i = 0; i < _options.length; i++) {
      ChoiceChip choiceChip = ChoiceChip(
        selected: _selectedIndex == i,
        label: Text(_options[i], style: TextStyle(color: Colors.white)),
        elevation: 5,
        pressElevation: 5,
        shadowColor: Colors.teal,
        backgroundColor: Colors.black54,
        selectedColor: Colors.blue,
        onSelected: (bool selected) {
          setState(() {
            if (selected) {
              _selectedIndex = i;
            }
          });
        },
      );

      chips.add(Padding(
          padding: EdgeInsets.symmetric(horizontal: 10), child: choiceChip));
    }

    return ListView(
      // This next line does the trick.
      scrollDirection: Axis.horizontal,
      children: chips,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(bottom: 15.0, top: 10.0),
        child: Column(
          children: <Widget>[
            Container(
              height: 30,
              child: _buildChips(),
            ),
          ],
        ));
  }
}
//**************************************************************************************

class MaterialsChips extends StatefulWidget {
  @override
  _MaterialsChipsState createState() => new _MaterialsChipsState();
}

class _MaterialsChipsState extends State<MaterialsChips> with TickerProviderStateMixin {
  int _selectedIndex;
  List<String> _options = [
    "Canvas",
    "Acrylic",
    "Wood",

  ];

  Widget _buildChips() {
    List<Widget> chips = new List();

    for (int i = 0; i < _options.length; i++) {
      ChoiceChip choiceChip = ChoiceChip(
        selected: _selectedIndex == i,
        label: Text(_options[i], style: TextStyle(color: Colors.white)),
        elevation: 5,
        pressElevation: 5,
        shadowColor: Colors.transparent,
        backgroundColor: Colors.black54,
        selectedColor: Colors.blue,
        onSelected: (bool selected) {
          setState(() {
            if (selected) {
              _selectedIndex = i;
            }
          });
        },
      );

      chips.add(Padding(
          padding: EdgeInsets.symmetric(horizontal: 10), child: choiceChip));
    }

    return ListView(
      // This next line does the trick.
      scrollDirection: Axis.horizontal,
      children: chips,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(bottom: 15.0, top: 10.0),
        child: Column(
          children: <Widget>[
            Container(
              height: 30,
              child: _buildChips(),
            ),
          ],
        ));
  }
}
