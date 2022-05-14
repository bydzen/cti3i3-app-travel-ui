import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(12.0),
        ),
      ),
      child: TextField(
        style: TextStyle(
          fontSize: 14.0,
          fontFamily: 'RockoFLF',
          color: Colors.grey[700],
        ),
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(10.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
            borderSide: const BorderSide(
              color: Colors.white,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.white,
            ),
            borderRadius: BorderRadius.circular(5.0),
          ),
          hintText: "Search Destination",
          prefixIcon: Icon(
            Icons.search,
            color: Colors.grey,
          ),
          hintStyle: const TextStyle(
            fontFamily: 'RockoFLF',
            fontSize: 14.0,
            color: Colors.grey,
          ),
        ),
        maxLines: 1,
      ),
    );
  }
}
