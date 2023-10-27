sealed class ApiQuery {
  int a = 12;

  static Map<String, Object> productQuery({
    bool? withDiscounts,
    bool? onlyDelivery,
    bool? onlySelfPickup,
    String? branchId,
    String? clientId,
    String? orderSource,
  }) =>
      {
        if (withDiscounts != null) 'with_discounts': withDiscounts,
        if (onlyDelivery != null) 'only_delivery': onlyDelivery,
        if (onlySelfPickup != null) 'only_self_pickup': onlySelfPickup,
        if (branchId != null) 'branch_id': branchId,
        if (clientId != null) 'client_id': clientId,
        if (orderSource != null) 'order_source': orderSource,
      };

  static Map<String, Object?> favoriteQuery({
    String? productIds,
    String? orderSource,
    bool? onlyDelivery,
    bool? onlySelfPickup,
    String? clientId,
    bool? withDiscounts,
  }) =>
      {
        if (productIds != null) 'product_ids': productIds,
        if (orderSource != null) 'order_source': orderSource,
        if (onlyDelivery != null) 'only_delivery': onlyDelivery,
        if (onlySelfPickup != null) 'only_self_pickup': onlySelfPickup,
        if (clientId != null) 'client_id': clientId,
        if (withDiscounts != null) 'with_discounts': withDiscounts,
      };
}
