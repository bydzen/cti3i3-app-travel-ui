import 'dart:convert';

class Bookmark {
  factory Bookmark.fromRawJson(String str) =>
      Bookmark.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  int id;
  String name;
  String place;
  String image;
  double price;
  String rating;
  String about;

  Bookmark({
    required this.id,
    required this.name,
    required this.place,
    required this.image,
    required this.price,
    required this.rating,
    required this.about,
  });

  factory Bookmark.fromJson(Map<String, dynamic> json) => Bookmark(
        id: json["id"],
        name: json["nama"],
        place: json["tempat"],
        price: json["harga"],
        about: json["konten"],
        rating: json["rating"].toDouble(),
        image: json["gambar"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "nama": name,
        "tempat": place,
        "harga": price,
        "konten": about,
        "rating": rating,
        "gambar": image,
      };
}

/////// API 🔥 ////////
// To parse this JSON data, do
//
//     final placesWisata = placesWisataFromJson(jsonString);

List<PlacesWisata> placesWisataFromJson(String str) => List<PlacesWisata>.from(
    json.decode(str).map((x) => PlacesWisata.fromJson(x)));

String placesWisataToJson(List<PlacesWisata> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class PlacesWisata {
  PlacesWisata({
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

  factory PlacesWisata.fromJson(Map<String, dynamic> json) => PlacesWisata(
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
