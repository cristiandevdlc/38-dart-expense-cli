void main(List<String> args) {
  final totals = <String, double>{};
  for (final value in args) {
    final parts = value.split(':'); final amount = double.tryParse(parts.length == 2 ? parts[1] : '');
    if (amount != null) totals[parts[0]] = (totals[parts[0]] ?? 0) + amount;
  }
  if (totals.isEmpty) { print('Uso: dart run expense.dart Categoria:Importe ...'); return; }
  totals.forEach((category, amount) => print('$category: \$${amount.toStringAsFixed(2)}'));
  print('Total: \$${totals.values.fold(0.0, (sum, value) => sum + value).toStringAsFixed(2)}');
}
