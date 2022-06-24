import 'dart:convert';

List<Destination> destinationFromJson(String str) => List<Destination>.from(
    json.decode(str).map((x) => Destination.fromJson(x)));

String destinationToJson(List<Destination> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Destination {
  Destination({
    required this.id,
    required this.nama,
    required this.tempat,
    required this.harga,
    required this.konten,
    required this.rating,
    required this.gambar,
  });

  int id;
  String nama;
  String tempat;
  int harga;
  String konten;
  double rating;
  String gambar;

  factory Destination.fromJson(Map<String, dynamic> json) => Destination(
        id: json["id"],
        nama: json["nama"],
        tempat: json["tempat"],
        harga: json["harga"],
        konten: json["konten"],
        rating: json["rating"].toDouble(),
        gambar: json["gambar"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "nama": nama,
        "tempat": tempat,
        "harga": harga,
        "konten": konten,
        "rating": rating,
        "gambar": gambar,
      };
}
