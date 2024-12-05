mixin Stats {
  int _points = 10;
  int _health = 10;
  int _attack = 10;
  int _defense = 10;
  int _skill = 10;

  // getters
  int get points => _points;

  List<Map<String, String>> get statsAsFormattedList => [
        {'title': 'health', 'value': _health.toString()},
        {'title': 'attack', 'value': _attack.toString()},
        {'title': 'defense', 'value': _defense.toString()},
        {'title': 'skill', 'value': _skill.toString()}
      ];

  Map<String, int> get statsAsMap => {
        "health": _health,
        "attack": _attack,
        "defense": _defense,
        "skill": _skill,
      };

  // methods
  void increaseStat(String stat) {
    if (_points > 0) {
      if (stat == 'health') {
        _health++;
      }
      if (stat == 'attack') {
        _attack++;
      }
      if (stat == 'defense') {
        _defense++;
      }
      if (stat == 'skill') {
        _skill++;
      }
      _points--;
    }
  }

  void decreaseStat(String stat) {
    if (stat == 'health' && _health > 5) {
      _health--;
      _points++;
    }
    if (stat == 'attack' && _attack > 5) {
      _attack--;
      _points++;
    }
    if (stat == 'defense' && _defense > 5) {
      _defense--;
      _points++;
    }
    if (stat == 'skill' && _skill > 5) {
      _skill--;
      _points++;
    }
  }
}

// enum Stat { health, attack, defense, skill }

// mixin Stats {
//   int _points = 10;
//   Map<Stat, int> _stats = {
//     Stat.health: 10,
//     Stat.attack: 10,
//     Stat.defense: 10,
//     Stat.skill: 10,
//   };

//   void increaseStat(Stat stat) {
//     if (_points > 0) {
//       _stats[stat] = _stats[stat]! + 1;
//       _points--;
//     }
//   }

//   void decreaseStat(Stat stat) {
//     if (_stats[stat]! > 5) {
//       _stats[stat] = _stats[stat]! - 1;
//       _points++;
//     }
//   }

//   int getStat(Stat stat) {
//     return _stats[stat]!;
//   }

//   Map<Stat, int> getStats() {
//     return Map.from(_stats); // Return a copy of the stats map
//   }
// }