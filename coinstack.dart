// enum Coins {
//   cent1(0.01),
//   cent2(0.02),
//   cent5(0.05),
//   cent10(0.1),
//   cent20(0.2),
//   cent50(0.5),
//   euro1(1),
//   euro2(2);

//   final double value;

//   const Coins(this.value);
// }

class Coinstack {
  List<int> coinStack = [];

  Coinstack(this.coinStack);
  int get value => coinStack.fold(0, (a,b)=>a+b);

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
  @override
  Coinstack operator +(Coinstack other) {
    if (other is Coinstack) {
      return other.value+value;
    }
  }

}

void main() {
  final cs1 = Coinstack([1, 2, 3, 4]);
  final cs2 = Coinstack([100]);

  if (cs1 > cs2) 
}
