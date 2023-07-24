import 'package:vexana/vexana.dart';

import '../../constants/app/app_constants.dart';

base class NetworkConfig {
  NetworkConfig() {
    baseUrl = ApplicationConstants.API_URL;
    options = BaseOptions(baseUrl: baseUrl);
  }
  late String baseUrl;

  late BaseOptions options;
}
