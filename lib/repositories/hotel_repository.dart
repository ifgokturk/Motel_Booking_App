import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../models/hotel_model.dart';

part 'hotel_repository.g.dart';

@riverpod
HotelRepository hotelRepository(HotelRepositoryRef ref) => HotelRepository();

class HotelRepository {
  Future<List<HotelModel>> getHotels() async {
    return Future.delayed(const Duration(milliseconds: 300), () {
      return HotelModel.sampleHotels;
    });
  }

  Future<HotelModel> getHotel(String hotelId) async {
    return Future.delayed(const Duration(milliseconds: 300), () {
      return HotelModel.sampleHotels
          .where((element) => element.id == hotelId)
          .first;
    });
  }
}
