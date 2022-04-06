import 'package:get/get.dart';

import '../modules/graph/bindings/graph_binding.dart';
import '../modules/graph/views/graph_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/listing/bindings/listing_binding.dart';
import '../modules/listing/views/listing_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LISTING,
      page: () => ListingView(),
      binding: ListingBinding(),
    ),

    GetPage(
      name: _Paths.GRAPH,
      page: () => GraphView(),
      binding: GraphBinding(),
    ),
  ];
}
