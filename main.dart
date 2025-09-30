import 'coinstack.dart';

void main() {
  final cs1 = Coinstack([1, 4, 5, 6]);
  final cs2 = Coinstack([1, 1, 5]);

  final Coinstack? cs3 = cs1 - cs2;
  if (cs3 == null) {
    print('Keine Werte');
  } else {
    print(cs3);
  }
}
