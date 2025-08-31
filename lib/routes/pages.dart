import 'package:get/get.dart';
import 'package:quiz_app/pages/home_page.dart';
import 'package:quiz_app/routes/routes.dart';
import 'package:quiz_app/view_model/home_view_model.dart';

abstract class Pages {
  static List<GetPage> pages = [
    GetPage(
      name: Routes.HOME_PAGE,
      page: () => HomePage(),
      binding: BindingsBuilder.put(() => HomeViewModel()),
    ),
  ];
}