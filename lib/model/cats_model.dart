class CatsModel {
  String? fact;
  int? length;

  CatsModel({
    this.fact,
    this.length,
  });

  CatsModel.fromJson(Map<String, dynamic> json) {
    fact = json['fact'];
    length = json['length'];
  }
}
