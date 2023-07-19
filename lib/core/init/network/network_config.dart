import 'package:vexana/vexana.dart';

import '../../constants/app/app_constants.dart';

base class NetworkConfig {
  late String baseUrl;

  late BaseOptions options;

  NetworkConfig() {
    baseUrl = ApplicationConstants.API_URL;
    options = BaseOptions(baseUrl: baseUrl);
  }
}
