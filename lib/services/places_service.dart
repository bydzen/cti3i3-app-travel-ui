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
  }
}
