import 'package:flutter_travel_app_challenge/models/destination.dart';

class DestinationService {
  static final List<String> _gallery = [
    'images/destination1.jpg',
    'images/destination2.jpg',
    'images/destination3.jpg',
    'images/destination4.jpg',
  ];

  List<Destination> recommendedDestinations = [
    Destination(
        name: 'Japan Temple',
        image: 'images/destination1.jpg',
        place: 'Osaka Street, Japan',
        price: 120,
        about:
            'Modern destination, with sky landspace, Simple Building, and perfect for photos.',
        gallery: _gallery),
    Destination(
        name: 'Torii Gate',
        image: 'images/destination2.jpg',
        place: 'Tokyo Street, Japan',
        price: 90,
        about:
            'Modern destination, with sky landspace, Simple Building, and perfect for photos.',
        gallery: _gallery),
    Destination(
        name: 'Japan Street',
        image: 'images/destination3.jpg',
        place: 'Japan',
        price: 60,
        about:
            'Modern destination, with sky landspace, Simple Building, and perfect for photos.',
        gallery: _gallery),
    Destination(
        name: 'Japan Street',
        image: 'images/destination4.jpg',
        place: 'Japan',
        price: 120,
        about:
            'Modern destination, with sky landspace, Simple Building, and perfect for photos.',
        gallery: _gallery),
  ];

  List<Destination> topDestinations = [
    Destination(
        name: 'Japan Street',
        image: 'images/destination3.jpg',
        place: 'Japan',
        price: 120,
        about:
            'Modern destination, with sky landspace, Simple Building, and perfect for photos.',
        gallery: _gallery),
    Destination(
        name: 'Japan Street',
        image: 'images/destination4.jpg',
        place: 'Japan',
        price: 60,
        about:
            'Modern destination, with sky landspace, Simple Building, and perfect for photos.',
        gallery: _gallery),
    Destination(
        name: 'Japan Temple',
        image: 'images/destination1.jpg',
        place: 'Osaka Street, Japan',
        price: 120,
        about:
            'Modern destination, with sky landspace, Simple Building, and perfect for photos.',
        gallery: _gallery),
    Destination(
        name: 'Torii Gate',
        image: 'images/destination2.jpg',
        place: 'Tokyo Street, Japan',
        price: 90,
        about:
            'Modern destination, with sky landspace, Simple Building, and perfect for photos.',
        gallery: _gallery),
  ];
}
