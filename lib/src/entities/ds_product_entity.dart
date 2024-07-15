enum SubscriptionUnit { month, year, week, day, unknown }

class DSProductEntity {
  DSProductEntity({
    required this.id,
    required this.price,
    required this.title,
    this.currencyCode,
    this.subscriptionPeriod,
    this.description,
    this.currencySymbol,
    this.androidOfferId,
  });

  final String id;
  final double price;
  final String title;
  final SubscriptionPeriod? subscriptionPeriod;
  final String? description;
  final String? currencyCode;
  final String? currencySymbol;
  final String? androidOfferId;

  String get formattedPrice => price.toStringAsFixed(2);
}

class SubscriptionPeriod {
  final int numOfUnits;
  final SubscriptionUnit unit;

  SubscriptionPeriod({required this.numOfUnits, required this.unit});
}
