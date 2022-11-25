class Destination {
  String imageUrl;
  String country;
  String description;

  Destination({
    required this.imageUrl,
    required this.country,
    required this.description,
  });
}

List<Destination> destinations = [
  Destination(
    imageUrl: 'images/bg-welcome.jpg',
    country: 'Niladri Leservoir',
    description: 'Visit Niladri for an amazing.',
  ),
  Destination(
    imageUrl: 'images/bg-welcome.jpg',
    country: 'France',
    description: 'Visit Paris for an amazing.',
  ),
  Destination(
    imageUrl: 'images/bg-welcome.jpg',
    country: 'India',
    description: 'Visit New Delhi for an amazing.',
  ),
  Destination(
    imageUrl: 'images/bg-welcome.jpg',
    country: 'Brazil',
    description: 'Visit Sao Paulo for an amazing.',
  ),
  Destination(
    imageUrl: 'images/bg-welcome.jpg',
    country: 'United States',
    description: 'Visit New York for an amazing.',
  ),
];