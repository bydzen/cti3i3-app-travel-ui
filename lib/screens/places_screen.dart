import 'package:flutter/material.dart';
import '../models/places_model.dart';

import '../services/places_service.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<PlacesWisata>? placeswisata;
  var isLoaded = false;

  @override
  void initState() {
    super.initState();

    getData();
  }

  getData() async {
    placeswisata = await Places().getPlacesWisata();

    if (placeswisata != null) {
      setState(() {
        isLoaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wisata'),
      ),
      body: Visibility(
        visible: isLoaded,
        child: ListView.builder(
            itemCount: placeswisata?.length,
            itemBuilder: (context, index) {
              return Text(placeswisata![index].nama);
            }),
        replacement: const Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
