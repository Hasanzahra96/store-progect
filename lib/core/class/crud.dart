import 'dart:convert';

import 'package:dartz/dartz.dart';

import 'package:http/http.dart ' as http;
import 'package:store/core/class/check_internet.dart';
import 'package:store/core/class/status_request.dart';
import 'package:store/core/services/link.dart';

class Crud {
  Future<Either<StatusRequest, Map>> postData(
      String linkUrl, Map data, Map<String, String> header) async {
    try {
      if (await CheckInternet()) {
        var response = await http.post(Uri.parse(linkUrl),
            body: jsonEncode(data), headers: header);

        if (response.statusCode == 200 || response.statusCode == 201) {
          Map responseBody = jsonDecode(response.body);
          print(response);
          print(responseBody);
          return Right(responseBody);
        } else {
          return const Left(StatusRequest.serverFailure);
        }
      } else {
        return const Left(StatusRequest.offlineFailure);
      }
    } catch (e) {
      return const Left(StatusRequest.serverFailure);
    }
  }

  Future<Either<StatusRequest, Map>> getData(
    String linkUrl,
    Map data,
  ) async {
    try {
      print('try catch');
      if (await CheckInternet()) {
        var response = await http.get(
          Uri.parse(linkUrl),
          headers: getHeader(),
        );
        print('do');
        Map<String, dynamic> responseBody = jsonDecode(response.body);
        /* print('data ${getHeader()}');
        print('data ${ConstData.token}');
        print('data ${SharedPreferencesKeys.tokenKey}');
        print('response.statusCode is ${response.statusCode}');*/
        print('response.body is ${responseBody}');

        if (response.statusCode == 200 || response.statusCode == 201) {
          Map responseBody = jsonDecode(response.body);
          return Right(responseBody);
        } else {
          return const Left(StatusRequest.serverFailure);
        }
      } else {
        return const Left(StatusRequest.offlineFailure);
      }
    } catch (e) {
      print(e);
      return const Left(StatusRequest.serverFailure);
    }
  }
}
