class DestinationAPI {
  final String nama;
  final String tempat;
  final double harga;
  final String konten;
  final String rating;
  final String gambar;

  const DestinationAPI({
    required this.nama,
    required this.tempat,
    required this.harga,
    required this.konten,
    required this.rating,
    required this.gambar,
  });

  factory DestinationAPI.fromJson(Map<String, dynamic> json) {
    return DestinationAPI(
      nama: json['nama'],
      tempat: json['tempat'],
      harga: json['harga'],
      konten: json['konten'],
      rating: json['rating'],
      gambar: json['gambar'],
    );
  }
}

/////////////////// pasangan oke//////////////
class Destination {
  String name;
  String place;
  String image;
  double price;
  String rating;
  String about;
  List<String> gallery;

  Destination(
      {required this.name,
      required this.place,
      required this.image,
      required this.price,
      required this.rating,
      required this.about,
      required this.gallery});
}
