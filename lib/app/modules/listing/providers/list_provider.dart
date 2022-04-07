import 'package:get/get.dart';

class ListProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future coin_List() async {
    final response = await get(
        'https://pro-api.coinmarketcap.com/v1/cryptocurrency/quotes/latest?symbol=BTC,ETH,LTC',
        contentType: 'application/json;',
        headers: {'X-CMC_PRO_API_KEY': '27ab17d1-215f-49e5-9ca4-afd48810c149'});
    // print(response.body['status']);
    print(response.body);
    //print(response.body['data']);
    return response.body;
  }
}
