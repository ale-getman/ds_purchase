import 'package:flutter/foundation.dart';

typedef DSPaywallPlacementTranslator = String Function(
    DSPaywallPlacement paywallType);

@immutable
class DSPaywallPlacement {
  final String val;

  const DSPaywallPlacement(this.val);

  @override
  int get hashCode => val.hashCode;

  @override
  bool operator ==(other) => other is DSPaywallPlacement && val == other.val;

  @override
  String toString() => val;
}
