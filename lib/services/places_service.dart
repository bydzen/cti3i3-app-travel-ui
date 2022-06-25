import 'package:http/http.dart' as http;
import '../models/places_model.dart';

class Places {
  Future<List<Destination>?> getDestination() async {
    var client = http.Client();
    var uri = Uri.parse('https://locavel.herokuapp.com/wisata');

    var response = await client.get(uri);

    if (response.statusCode == 200) {
      var json = response.body;
      return destinationFromJson(json);
    }
    return null;
  }

  getData() async {
    var destination = await Places().getDestination();

    // ignore: unused_local_variable
    List<Destination> placesList = [
      Destination(
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
