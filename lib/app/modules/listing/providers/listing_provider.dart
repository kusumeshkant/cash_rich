import 'package:get/get.dart';

import '../listing_model.dart';

class ListingProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return Listing.fromJson(map);
      if (map is List)
        return map.map((item) => Listing.fromJson(item)).toList();
    };
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<Listing?> getListing(int id) async {
    final response = await get('listing/$id');
    return response.body;
  }

  Future<Response<Listing>> postListing(Listing listing) async =>
      await post('listing', listing);
  Future<Response> deleteListing(int id) async => await delete('listing/$id');
}
