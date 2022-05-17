import 'package:flutter/material.dart';
import 'package:LocaVel/models/destination.dart';

class TopDestination extends StatelessWidget {
  final Destination destination;

  const TopDestination({required this.destination});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 80,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(12.0),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Row(
              children: [
                ClipRRect(
                  child: Image.asset(
                    destination.image,
                    height: 60,
                    width: 60,
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 10.0,
                    right: 10.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        destination.name,
                        style: const TextStyle(
                          color: Colors.black,
                          fontFamily: 'RockoFLF Bold',
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        destination.place,
                        style: const TextStyle(
                          fontFamily: 'RockoFLF',
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          width: 20.0,
        ),
      ],
    );
  }
}
