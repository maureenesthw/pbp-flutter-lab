class Spending {
  String judul = "";
  int? nominal = 0;
  String jenis;
  DateTime date;
  Spending(this.judul, this.nominal, this.jenis, this.date);
}

class ListSpending {
  static List<Spending> data = [];
}
