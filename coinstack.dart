class Coinstack {
  List<int> coinStack = [];

  Coinstack(this.coinStack) {
    coinStack.sort();
  }
  String toString() =>
      "Coinstack mit folgenden Münzen bleibt übrig ${coinStack.join(", ")}";
  int get value => coinStack.fold(0, (a, b) => a + b);

  Coinstack? operator -(Coinstack other) {
    List<int> copyCoinstack = [...coinStack];
    for (final (index, coin) in other.coinStack.indexed) {
      if (!copyCoinstack.remove(coin)) {
        return null;
      }
      print(index);
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
