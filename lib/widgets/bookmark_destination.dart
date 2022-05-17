import 'package:flutter/material.dart';
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
          width: MediaQuery.of(context).size.width - 109,
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
                    anjing.image,
                    height: 60,
                    width: 60,
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 10.0,
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
        SizedBox(
          width: 15,
        ),
        Positioned(
          child: Container(
            padding: const EdgeInsets.only(
              left: 10.0,
            ),
            child: const Center(
              child: Icon(
                Icons.remove_circle_outline,
                color: Colors.grey,
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 0,
        ),
      ],
    );
  }
}
