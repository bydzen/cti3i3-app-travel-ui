import 'package:http/http.dart' as http;
import '../models/places_model.dart';

class Places {
  Future<List<PlacesWisata>?> getPlacesWisata() async {
    var client = http.Client();
    var uri = Uri.parse('https://locavel.herokuapp.com/wisata');

    var response = await client.get(uri);

    if (response.statusCode == 200) {
      var json = response.body;
      return placesWisataFromJson(json);
    }
    return null;
  }

  List<PlacesWisata> placesList = [
    PlacesWisata(
        id: 1,
        nama: 'Raja Asu',
        tempat: 'Papua',
        harga: 15000,
        konten: 'Anjing loeee ayaaa',
        rating: 4.1,
        gambar: 'images/destination1.jpg'),
  ];

  getData() async {
    var destination = await Places().getPlacesWisata();

    // ignore: unused_local_variable
    List<PlacesWisata> placesList = [
      PlacesWisata(
          id: destination![0].id,
          nama: destination[0].nama,
          tempat: destination[0].tempat,
          harga: destination[0].harga,
          konten: destination[0].konten,
          rating: destination[0].rating,
          gambar: destination[0].gambar),
    ];
  }
}
