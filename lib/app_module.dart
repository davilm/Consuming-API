import 'package:flutter_application_1/controllers/home_controller.dart';
import 'package:flutter_application_1/services/json_placeholder_service.dart';
import 'package:flutter_application_1/services/dio_client.dart';
import 'package:flutter_application_1/services/http_client.dart';
import 'package:flutter_application_1/services/http_client_interface.dart';
import 'package:flutter_application_1/services/uno_client.dart';
import 'package:flutter_application_1/views/home_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  List<Bind<Object>> get binds => [
        // Bind.singleton<IHttpClient>((i) => DioClient()),
        // Bind.singleton<IHttpClient>((i) => HttpPackageClient()),
        Bind.singleton<IHttpClient>((i) => UnoClient()),
        Bind.singleton((i) => JsonPlaceHolderService(i())),
        Bind.singleton((i) => HomeController(i()))
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (_, __) => HomePage()),
      ];
}
