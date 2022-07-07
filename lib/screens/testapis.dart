import 'package:locavel/models/bookmark.dart';
import 'package:locavel/services/bookmark_service.dart';
import 'package:flutter/material.dart';

class TestAPI extends StatefulWidget {
  const TestAPI({Key? key}) : super(key: key);

  @override
  State<TestAPI> createState() => _HomeState();
}

class _HomeState extends State<TestAPI> {
  List<PlacesWisata>? destination;
  var isLoaded = false;

  @override
  void initState() {
    super.initState();

    getData();
  }

  getData() async {
    destination = await Places().getDestination();

    if (destination != null) {
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
            itemCount: destination?.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(
                    top: 20, left: 20, right: 20, bottom: 20),
                child: Text(
                  'Wisata : ' +
                      destination![index].nama +
                      '\n' +
                      'Tempat : ' +
                      destination![index].tempat +
                      '\n' +
                      'Harga  : ' +
                      destination![index].harga.toString() +
                      '\n' +
                      'Rating : ' +
                      destination![index].rating.toString() +
                      '\n' +
                      'Tentang: \n' +
                      destination![index].konten,
                  style: const TextStyle(
                    color: Colors.black,
                    fontFamily: 'JetBrains',
                    fontSize: 16,
                  ),
                ),
              );
            }),
        replacement: const Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
