class TPricingCalculator {
  /// Calculate total price (product + tax + shipping)
  static double calculateTotalPrice(double productPrice, String location) {
    final taxRate = _getTaxRateForLocation(location);
    final taxAmount = productPrice * taxRate;
    final shippingCost = _getShippingCost(location);
    return productPrice + taxAmount + shippingCost;
  }

  /// Calculate shipping cost (formatted as string)
  static String calculateShippingCost(double productPrice, String location) {
    return _getShippingCost(location).toStringAsFixed(2);
  }

  /// Calculate tax amount (formatted as string)
  static String calculateTax(double productPrice, String location) {
    final taxRate = _getTaxRateForLocation(location);
    return (productPrice * taxRate).toStringAsFixed(2);
  }

  // ------------------------------
  // PRIVATE HELPER METHODS
  // ------------------------------

  /// Get tax rate for location (mock implementation)
  static double _getTaxRateForLocation(String location) {
    // TODO: Replace with actual tax rate lookup
    return location.toLowerCase().contains('new york') ? 0.08 : 0.06;
  }

  /// Get shipping cost for location (mock implementation)
  static double _getShippingCost(String location) {
    // TODO: Replace with actual shipping calculation
    const baseCost = 5.0;
    return location.toLowerCase().contains('alaska') ? baseCost * 2 : baseCost;
  }

  /// Format price with currency symbol
  static String formatPrice(double price, {String currencySymbol = '\$'}) {
    return '$currencySymbol${price.toStringAsFixed(2)}';
  }


  /// Get tax rate for location (with example implementation)
  /*static double _getTaxRateForLocation2(String location) {
  // TODO: Replace with actual tax rate API/database lookup
  final rates = {
  'new york': 0.08875,
  'california': 0.0825,
  'texas': 0.0625,
  'florida': 0.06,
  };
  return rates[location.toLowerCase()] ?? 0.06; // Default 6%
  }*/

  /// Get shipping cost (with example tiered implementation)
  /*static double _getShippingCost2(String location) {
  // TODO: Replace with actual shipping API calculation
  const baseCost = 5.00;
  final locationFactor = switch(location.toLowerCase()) {
  'alaska' || 'hawaii' => 2.0,
  'international' => 3.0,
  _ => 1.0, // Default multiplier
  };
  return baseCost * locationFactor;
  }*/

  /// Calculate cart total (including all items)
  static double calculateCartTotal(List<CartItem> items, String location) {
  final subtotal = items.fold(0.0, (sum, item) => sum + (item.price * item.quantity));
  final tax = subtotal * _getTaxRateForLocation(location);
  final shipping = _getShippingCost(location);
  return subtotal + tax + shipping;
  }

  /// Format currency with 2 decimal places
  static String _formatCurrency(double amount) {
  return amount.toStringAsFixed(2);
  }

  /// Get price breakdown summary
  static Map<String, String> getPriceBreakdown(double subtotal, String location) {
  final taxRate = _getTaxRateForLocation(location);
  return {
  'Subtotal': _formatCurrency(subtotal),
  'Tax (${(taxRate * 100).toStringAsFixed(2)}%)': _formatCurrency(subtotal * taxRate),
  'Shipping': _formatCurrency(_getShippingCost(location)),
  'Total': _formatCurrency(subtotal * (1 + taxRate) + _getShippingCost(location)),
  };
  }
  }

// Example model (define your actual CartItem model)
class CartItem {
  final double price;
  final int quantity;

  CartItem({required this.price, this.quantity = 1});
}
