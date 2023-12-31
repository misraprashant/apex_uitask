class DownloadData {
  final String day;
  final String date;
  final String amount;
  final String status;
  bool isWorking;
  bool isSelected;

  DownloadData({
    required this.day,
    required this.date,
    required this.amount,
    required this.status,
    this.isWorking = false,
    this.isSelected = false,
  });
}