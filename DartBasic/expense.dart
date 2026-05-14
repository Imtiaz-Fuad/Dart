void main() {
  int income = 5000;
  
  final List<Map<String, dynamic>> expenses = [
    {'category': 'food', 'expense': 'groceries', 'amount': 100},
    {'category': 'food', 'expense': 'restaurant', 'amount': 50},
    {'category': 'rent', 'expense': 'apartment', 'amount': 1500},
    {'category': 'transport', 'expense': 'gas', 'amount': 200},
    {'category': 'transport', 'expense': 'car', 'amount': null},
  ];

  int total = 0;
  for (var v in expenses) {
    total += v['amount'] as int? ?? 0;
  }

  Map<String, int> typeTotal = {};
  for (var expense in expenses) {
    String category = expense['category'];
    int? amount = expense['amount'] as int?;
    typeTotal[category] = (typeTotal[category] ?? 0) + (amount ?? 0);
  }

  int remaining = income - total;
  double Percentage = (remaining / income) * 100;

  print('Income: $income');
  print('Total Expenses: $total');
  print('Remaining Balance: $remaining');
  print('Saving: ${Percentage.toStringAsFixed(2)}%');
  print('Expenses By Category:');
  typeTotal.forEach((category, amount) {
    print(' ${category.toUpperCase()}: $amount');
  });

}