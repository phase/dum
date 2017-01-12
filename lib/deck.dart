library deck;

class Card {
  Kind kind;
  Suite suite;

  Card(this.kind, this.suite);

  String toString() {
    return kindToString(kind) + " of " + suiteToString(suite);
  }
}

enum Kind {
  // Used for indexing
  _0,
  _1,
  _2,
  THREE,
  FOUR,
  FIVE,
  SIX,
  SEVEN,
  EIGHT,
  NINE,
  TEN,
  JACK,
  QUEEN,
  KING,
  ACE,
  TWO
}

String kindToString(Kind k) {
  switch (k) {
    case Kind.THREE:
    case Kind.FOUR:
    case Kind.FIVE:
    case Kind.SIX:
    case Kind.SEVEN:
    case Kind.EIGHT:
    case Kind.NINE:
    case Kind.TEN:
      return k.index.toString();
    case Kind.JACK:
      return "J";
    case Kind.QUEEN:
      return "Q";
    case Kind.KING:
      return "K";
    case Kind.ACE:
      return "A";
    case Kind.TWO:
      return "2";
    default:
      return "err";
  }
}

enum Suite {
  spades,
  hearts,
  diamonds,
  clubs
}

String suiteToString(Suite s) {
  switch (s) {
    case Suite.spades:
      return "Spades";
    case Suite.hearts:
      return "Hearts";
    case Suite.diamonds:
      return "Diamonds";
    case Suite.clubs:
      return "Clubs";
    default:
      return "err";
  }
}
