import 'package:cards/models/cards.dart';

List<PlayCard> fillDeck() {
  List<PlayCard> deck = [];
  for (int i = 0; i < 13; i++)
    deck.add(PlayCard(i + 1, "Pique"));
  for (int i = 0; i < 13; i++)
    deck.add(PlayCard(i + 1, "Cœur"));
  for (int i = 0; i < 13; i++)
    deck.add(PlayCard(i + 1, "Trèfle"));
  for (int i = 0; i < 13; i++)
    deck.add(PlayCard(i + 1, "Carreau"));

  return deck;
}