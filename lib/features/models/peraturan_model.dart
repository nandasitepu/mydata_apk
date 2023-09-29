class Peraturan {
  final String id, nomor, uraian, link;

  Peraturan({
    required this.id,
    required this.nomor,
    required this.uraian,
    required this.link,
  });

  factory Peraturan.fromJson(Map<dynamic, dynamic> json) {
    return Peraturan(
      id: json[0],
      nomor: json[1],
      uraian: json[2],
      link: json[3],
    );
  }
}
