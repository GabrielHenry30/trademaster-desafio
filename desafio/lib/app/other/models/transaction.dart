class Transaction {
  final String id;
  final String message;
  final double value;
  final String date;
  final int portion;

  Transaction(
      {required this.id,
      required this.message,
      required this.value,
      required this.date,
      required this.portion});
}
