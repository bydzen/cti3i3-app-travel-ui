import 'package:meta/meta.dart';
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
