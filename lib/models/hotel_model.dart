import 'package:google_maps_flutter/google_maps_flutter.dart';

class HotelModel {
  final String id;
  final String title;
  final String location;
  final String address;
  final String description;
  final String thumbnailPath;
  final List<String> imagePaths;
  final int totalReview;
  final double ratingScore;
  final double price;
  final LatLng coordinate;

  const HotelModel({
    required this.id,
    required this.title,
    required this.location,
    required this.address,
    required this.description,
    required this.thumbnailPath,
    required this.imagePaths,
    required this.price,
    required this.coordinate,
    this.totalReview = 0,
    this.ratingScore = 0,
  });

  static List<HotelModel> sampleHotels = const [
    HotelModel(
      id: '1',
      title: 'Nigde Thiana Hotel',
      location: 'Bor/Nigde/Turkiye',
      address: 'Turn rigth, 200 mt later at left hand',
      description:
          'We are very good and clean place which offers the delicious menu',
      thumbnailPath: 'assets/11.png',
      imagePaths: ['assets/room1.png', 'assets/room2.png', 'assets/room3.png'],
      price: 335,
      coordinate: LatLng(-7.8188302371260265, 110.36928495262913),
      totalReview: 434,
      ratingScore: 3.6,
    ),
    HotelModel(
      id: '2',
      title: 'Kocaeli puff Hotel',
      location: 'izmit/Kocaeli/Turkiye',
      address: 'Turn rigth, 200 mt later at left hand',
      description:
          'We are very good and clean place which offers the delicious menu',
      thumbnailPath: 'assets/12.png',
      imagePaths: ['assets/room2.png', 'assets/room3.png', 'assets/room1.png'],
      price: 335,
      coordinate: LatLng(-7.8188302371260265, 110.36928495262913),
      totalReview: 434,
      ratingScore: 4.6,
    ),
    HotelModel(
      id: '1',
      title: 'Nigde Thiana Hotel',
      location: 'Bor/Nigde/Turkiye',
      address: 'Turn rigth, 200 mt later at left hand',
      description:
      'We are very good and clean place which offers the delicious menu',
      thumbnailPath: 'assets/11.png',
      imagePaths: ['assets/room1.png', 'assets/room2.png', 'assets/room3.png'],
      price: 335,
      coordinate: LatLng(-7.8188302371260265, 110.36928495262913),
      totalReview: 434,
      ratingScore: 2.6,
    ),
    HotelModel(
      id: '2',
      title: 'Kocaeli puff Hotel',
      location: 'izmit/Kocaeli/Turkiye',
      address: 'Turn rigth, 200 mt later at left hand',
      description:
      'We are very good and clean place which offers the delicious menu',
      thumbnailPath: 'assets/12.png',
      imagePaths: ['assets/room2.png', 'assets/room3.png', 'assets/room1.png'],
      price: 335,
      coordinate: LatLng(-7.8188302371260265, 110.36928495262913),
      totalReview: 434,
      ratingScore: 1.6,
    ),
    HotelModel(
      id: '1',
      title: 'Nigde Thiana Hotel',
      location: 'Bor/Nigde/Turkiye',
      address: 'Turn rigth, 200 mt later at left hand',
      description:
      'We are very good and clean place which offers the delicious menu',
      thumbnailPath: 'assets/11.png',
      imagePaths: ['assets/room1.png', 'assets/room2.png', 'assets/room3.png'],
      price: 335,
      coordinate: LatLng(-7.8188302371260265, 110.36928495262913),
      totalReview: 434,
      ratingScore: 3.6,
    ),
    HotelModel(
      id: '2',
      title: 'Kocaeli puff Hotel',
      location: 'izmit/Kocaeli/Turkiye',
      address: 'Turn rigth, 200 mt later at left hand',
      description:
      'We are very good and clean place which offers the delicious menu',
      thumbnailPath: 'assets/12.png',
      imagePaths: ['assets/room2.png', 'assets/room3.png', 'assets/room1.png'],
      price: 335,
      coordinate: LatLng(-7.8188302371260265, 110.36928495262913),
      totalReview: 434,
      ratingScore: 3.6,
    ),
    HotelModel(
      id: '1',
      title: 'Nigde Thiana Hotel',
      location: 'Bor/Nigde/Turkiye',
      address: 'Turn rigth, 200 mt later at left hand',
      description:
      'We are very good and clean place which offers the delicious menu',
      thumbnailPath: 'assets/11.png',
      imagePaths: ['assets/room1.png', 'assets/room2.png', 'assets/room3.png'],
      price: 335,
      coordinate: LatLng(-7.8188302371260265, 110.36928495262913),
      totalReview: 434,
      ratingScore: 3.6,
    ),
    HotelModel(
      id: '2',
      title: 'Kocaeli puff Hotel',
      location: 'izmit/Kocaeli/Turkiye',
      address: 'Turn rigth, 200 mt later at left hand',
      description:
      'We are very good and clean place which offers the delicious menu',
      thumbnailPath: 'assets/12.png',
      imagePaths: ['assets/room2.png', 'assets/room3.png', 'assets/room1.png'],
      price: 335,
      coordinate: LatLng(-7.8188302371260265, 110.36928495262913),
      totalReview: 434,
      ratingScore: 3.6,
    ),
  ];
}
