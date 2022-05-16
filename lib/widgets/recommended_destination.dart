import 'package:flutter/material.dart';
import 'package:LocaVel/models/destination.dart';

class RecommendedDestination extends StatelessWidget {
  final Destination destination;

  const RecommendedDestination({required this.destination});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Image.asset(
            destination.image,
            height: 250,
            width: 200,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: 12,
          right: 6,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.blue.withOpacity(0.6),
              borderRadius: BorderRadius.circular(10),
            ),
            width: 76,
            height: 26,
            child: Center(
              child: Text(
                'Rp. ' + destination.price.toStringAsFixed(0),
                style: const TextStyle(
                  color: Colors.white,
                  fontFamily: 'RockoFLF',
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 24,
          left: 6,
          child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 150,
                  child: Text(
                    destination.name,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'RockoFLF Bold',
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      shadows: [
                        Shadow(
                            color: Colors.black.withOpacity(0.25),
                            offset: const Offset(6, 6),
                            blurRadius: 12),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  destination.place,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
