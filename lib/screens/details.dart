import 'package:flutter/material.dart';
import 'package:LocaVel/models/destination.dart';

class Details extends StatelessWidget {
  final Destination destination;

  const Details({required this.destination});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                buildHeaderWidget(context),
                buildAboutWidget(),
                buildGalleryWidget(),
                buildBookWidget(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildHeaderWidget(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset(
                  destination.image,
                  height: 400,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          Positioned(
            top: 16,
            left: 16,
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                width: 44,
                height: 44,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blue[200],
                ),
                child: const Center(
                  child: Icon(
                    Icons.arrow_back_ios_outlined,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 16,
            right: 16,
            child: Container(
              width: 44,
              height: 44,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.blue[200],
              ),
              child: const Center(
                child: Icon(
                  Icons.bookmark,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 72,
            left: 16,
            child: SizedBox(
              width: 200,
              child: Text(
                destination.name,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'RockoFLF Bold',
                  fontSize: 28,
                  color: Colors.white,
                  shadows: [
                    Shadow(
                        color: Colors.black.withOpacity(0.25),
                        offset: const Offset(6, 6),
                        blurRadius: 12),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 32,
            left: 16,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(
                  'Rp. ' + destination.price.toStringAsFixed(0),
                  style: const TextStyle(
                    color: Colors.white,
                    fontFamily: 'RockoFLF',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  '/orang',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'RockoFLF',
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 32,
            right: 16,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: Colors.grey.withOpacity(0.7),
              ),
              width: 84,
              height: 44,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Text(
                    destination.rating,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'RockoFLF',
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildAboutWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: 6.0,
          ),
          child: Text(
            'Tentang ' + destination.place,
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'RockoFLF Bold',
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 12.0,
            bottom: 12.0,
          ),
          child: Text(
            destination.about,
            style: const TextStyle(
              color: Colors.grey,
              fontFamily: 'RockoFLF',
              fontSize: 14,
              height: 1.5,
            ),
          ),
        ),
      ],
    );
  }

  Widget buildGalleryWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(
            vertical: 6.0,
          ),
          child: Text(
            'Gallery',
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'RockoFLF Bold',
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            for (int i = 0; i < destination.gallery.length; i++)
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(
                              destination.gallery[i],
                            ),
                          ),
                        ),
                      ),
                      (i + 1 == 4)
                          ? Container(
                              decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(15),
                              ),
                            )
                          : Container(),
                      (i + 1 == 4)
                          ? const Positioned(
                              child: Center(
                                child: Text(
                                  '+6',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'RockoFLF',
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            )
                          : Container(),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ],
    );
  }

  Widget buildBookWidget(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24.0),
      child: ConstrainedBox(
        constraints: BoxConstraints.tightFor(
          width: MediaQuery.of(context).size.width,
          height: 55,
        ),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
          onPressed: () {
            // TODO: Book destination
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Spacer(),
                Text(
                  'Pesan Wisata',
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'RockoFLF Bold',
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2,
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.arrow_forward,
                  size: 18,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
