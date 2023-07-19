import 'package:logger/logger.dart';

mixin NetworkHelperMixin {
  void showLog(dynamic message) {
    Logger().wtf(message);
  }
}
