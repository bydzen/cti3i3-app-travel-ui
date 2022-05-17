import 'package:flutter/material.dart';
import 'package:LocaVel/models/destination.dart';
import 'package:LocaVel/models/bookmark.dart';

class BookMarkPage extends StatelessWidget {
  final Bookmark anjing;

  const BookMarkPage({required this.anjing});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 80,
          decoration: const BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.all(
              Radius.circular(12200.0),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Row(
              children: [
                ClipRRect(
                  child: Image.asset(
                    anjing.image,
                    height: 60,
                    width: 60,
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 10.0,
                    right: 20.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        anjing.name,
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
                        anjing.place,
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
