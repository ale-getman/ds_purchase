// import 'package:adapty_flutter/adapty_flutter.dart';
//
// typedef DSProductEntity = AdaptyPaywallProduct;
//
// typedef DSPaywallEntity = AdaptyPaywall;
//
// extension AdaptyProductExt on AdaptyPaywallProduct {
//   //     return DSProductEntity(
//   //       id: vendorProductId,
//   //       price: price.amount,
//   //       currencyCode: price.currencyCode,
//   //       currencySymbol: price.currencySymbol,
//   //       localizedPrice: price.localizedString,
//   //       title: localizedTitle,
//   //       description: localizedDescription,
//   //       androidOfferId: subscription?.offer?.identifier.id,
//   //       subscriptionPeriod: subscription?.period.toAppPeriod(),
//   //       localizedSubscriptionPeriod: subscription?.localizedPeriod,
//   //     );
//
//   String get id => vendorProductId;
//   String? get currencyCode => price.currencyCode;
//   String? get currencySymbol => price.currencySymbol;
//   SubscriptionPeriod? get subscriptionPeriod => subscription?.period.toAppPeriod();
//   String? get offerId => subscription?.offer?.identifier.id;
//   String? get localizedSubscriptionPeriod => subscription?.localizedPeriod;
//   String? get localizedPrice => price.localizedString;
//
//   String get formattedPrice => price.amount.toStringAsFixed(2);
//
//   bool get isTrial => subscription?.offer?.identifier.type == AdaptySubscriptionOfferType.introductory;
//
//   String replaceTags(String text) {
//     final priceSymbol = currencySymbol ?? currencyCode ?? '';
//     final priceValue = price.amount;
//     final locPrice = localizedPrice ?? '$priceValue $priceSymbol';
//
//     text = text.replaceAll('{price}', locPrice);
//
//     var pricePerDay = (subscriptionPeriod != null
//         ? priceValue / subscriptionPeriod!.daysInPeriod
//         : priceValue)
//         .toStringAsFixed(1);
//
//     text = text.replaceAll('{price_per_day}', '$priceSymbol$pricePerDay');
//
//     final pricePerWeek = (subscriptionPeriod != null
//         ? priceValue / subscriptionPeriod!.weeksInPeriod
//         : priceValue)
//         .toStringAsFixed(1);
//
//     text = text.replaceAll('{price_per_week}', '$priceSymbol$pricePerWeek');
//
//     text = text.replaceAll('{currency}', priceSymbol);
//
//     text = text.replaceAll(
//         '{zero_price}', locPrice.replaceAll(RegExp(r'[\d,\.]+'), '0'));
//
//     if (subscriptionPeriod?.daysInPeriod != null) {
//       text = text.replaceAll(
//           '{days}', subscriptionPeriod!.daysInPeriod.toString());
//     }
//
//     text = text.replaceAll(
//         '{subscription_period}', '$localizedSubscriptionPeriod');
//
//     return text;
//   }
// }
//
// enum SubscriptionUnit { month, year, week, day, unknown }
//
// class SubscriptionPeriod {
//   final int numOfUnits;
//   final SubscriptionUnit unit;
//
//   SubscriptionPeriod({required this.numOfUnits, required this.unit});
//
//   int get daysInPeriod => switch (unit) {
//     SubscriptionUnit.month => 30 * numOfUnits,
//     SubscriptionUnit.year => 365 * numOfUnits,
//     SubscriptionUnit.week => 7 * numOfUnits,
//     SubscriptionUnit.day => numOfUnits,
//     SubscriptionUnit.unknown => numOfUnits,
//   };
//
//   int get weeksInPeriod => switch (unit) {
//     SubscriptionUnit.month => 4 * numOfUnits,
//     SubscriptionUnit.year => 52 * numOfUnits,
//     SubscriptionUnit.week => numOfUnits,
//     SubscriptionUnit.day => (0.14 * numOfUnits).round(),
//     SubscriptionUnit.unknown => numOfUnits,
//   };
// }
//
// extension AdaptySubscriptionPeriodExt on AdaptySubscriptionPeriod {
//   SubscriptionPeriod toAppPeriod() {
//     final unit = switch (this.unit) {
//       AdaptyPeriodUnit.day => SubscriptionUnit.day,
//       AdaptyPeriodUnit.week => SubscriptionUnit.week,
//       AdaptyPeriodUnit.month => SubscriptionUnit.month,
//       AdaptyPeriodUnit.year => SubscriptionUnit.year,
//       AdaptyPeriodUnit.unknown => SubscriptionUnit.unknown,
//     };
//
//     return SubscriptionPeriod(numOfUnits: numberOfUnits, unit: unit);
//   }
// }
