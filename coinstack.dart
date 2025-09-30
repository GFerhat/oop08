class Coinstack {
  List<int> coinStack = [];

  Coinstack(this.coinStack) {
    coinStack.sort();
  }
  String toString() => "Geldstapel mit den Münzen ${coinStack.join(", ")}";
  int get value => coinStack.fold(0, (a, b) => a + b);

  Coinstack? operator -(Coinstack other) {
    List<int> copyCoinstack = List.from(coinStack);
    for (final coin in other.coinStack) {
      if (!copyCoinstack.remove(coin)) {
        return null;
      }
    }
    return Coinstack(copyCoinstack);
  }

  bool operator >(Object other) {
    if (other is Coinstack) {
      return value > other.value;
    } else
      return false;
  }

  bool operator <(Object other) {
    if (other is Coinstack) {
      return value < other.value;
    } else
      return false;
  }

  bool operator ==(Object other) {
    if (other is Coinstack) {
      return value == other.value;
    } else
      return false;
  }

  bool operator <=(Object other) {
    if (other is Coinstack) {
      return value <= other.value;
    } else
      return false;
  }

  bool operator >=(Object other) {
    if (other is Coinstack) {
      return value >= other.value;
    } else
      return false;
  }

  Coinstack operator +(Coinstack other) {
    return Coinstack(other.coinStack + coinStack);
  }
}
