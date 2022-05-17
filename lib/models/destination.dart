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

class chatting {
  String name;
  String isi;
  String image;
  List<String> profile;

  chatting(
      {required this.name,
      required this.isi,
      required this.image,
      required this.profile});
}
