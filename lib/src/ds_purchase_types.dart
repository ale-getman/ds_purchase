import 'package:flutter/foundation.dart';

typedef DSPaywallPlacementTranslator = String Function(DSPaywallPlacement paywallType);

@immutable
class DSPaywallPlacement {
  final String val;
  /// key for matching this paywall with remote config
  @Deprecated('Better way currently is use in-app map to define relations')
  final String? rcKey;

  const DSPaywallPlacement(this.val, {this.rcKey});

  @override
  int get hashCode => val.hashCode;

  @override
  bool operator ==(other) => other is DSPaywallPlacement && val == other.val;

  @override
  String toString() => val;
}
