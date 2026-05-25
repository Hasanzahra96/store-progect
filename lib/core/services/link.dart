import 'package:store/core/constant/constant_data.dart';

class AppLink {
  static String appRoot = 'http://focal-x';
  static String imageWithRootUrl = ('$appRoot/storge/');
  static String serverApiRoot = '$appRoot/api';
  static String login = '$serverApiRoot/login';
  static String home = '$serverApiRoot/home';
}

Map<String, String> getHeader() {
  Map<String, String> mainHeader = {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
    'X-Requested-With': 'XMLHttpRequest'
  };
  return mainHeader;
}

Map<String, String> getHeaderToken() {
  Map<String, String> mainHeader = {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
    'X-Requested-With': 'XMLHttpRequest',
    'Authorization': 'Bearer${ConstData.token}'
  };
  return mainHeader;
}
