import 'package:ds_purchase/src/entities/ds_product_entity.dart';

class DSPaywallEntity {
  final String placementId;
  final String name;
  final Map<String, dynamic>? remoteConfig;
  final List<DSProductEntity> products;

  DSPaywallEntity({
    required this.placementId,
    required this.name,
    required this.products,
    this.remoteConfig,
  });
}
