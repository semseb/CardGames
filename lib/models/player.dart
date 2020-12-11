import 'package:cards/models/cards.dart';

class Player{
  String _name;
  int _age;
  List<PlayCard> _hand;

  Player(this._name, this._age, this._hand);

  String get name => _name;
  int get age => _age;
  List<PlayCard> get hand => _hand;
}