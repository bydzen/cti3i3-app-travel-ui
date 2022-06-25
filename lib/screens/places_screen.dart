import 'package:flutter/material.dart';
import '../models/places_model.dart';

import '../services/places_service.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Destination>? destination;
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
              return Text(destination![index].nama);
            }),
        replacement: const Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
