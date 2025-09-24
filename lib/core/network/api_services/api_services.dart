// ignore_for_file: avoid_print
import 'package:abdelrahman875_fo21aef727586/core/network/api_services/api_endpoints.dart';
import 'package:abdelrahman875_fo21aef727586/core/network/api_services/error_handle.dart';
import 'package:abdelrahman875_fo21aef727586/core/network/api_services/respose_handle.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';


class ApiServices {
  static final Dio _dio = Dio(
    BaseOptions(
      baseUrl: ApiEndpoints.baseUrl,
      connectTimeout: Duration(seconds: 10),
      sendTimeout: Duration(seconds: 10),
     
    ),
  );

  /// GET request
  static Future<dynamic> getRequest({
    required String endpoints,
    Map<String, String>? headers,
  }) async {
    try {
      final response = await _dio.get(
        '/$endpoints',
        options: Options(headers: headers),
      );
      debugPrint("\nGET Request Successful: ${response.data}\n");
      return ResposeHandle.handleResponse(response);
    } catch (e) {
      if (e is DioException) {
        ErrorHandle.handleDioError(e);
      } else {
        print('Non-Dio error: $e');
      }
    }
  }

  /// POST request
  static Future<dynamic> postRequest({
    required String endpoints,
    required Map<String, dynamic> body,
    Map<String, String>? headers,
  }) async {
    try {
      final response = await _dio.post(
        '/$endpoints',
        data: body,
        options: Options(
          headers: headers ?? {"Content-Type": "application/json"},
        ),
      );
      debugPrint("\nPOST Request Successful: ${response.data}\n");
      return ResposeHandle.handleResponse(response);
    } catch (e) {
      if (e is DioException) {
        ErrorHandle.handleDioError(e);
      } else {
        print('Non-Dio error: $e');
      }
    }
  }

  /// PUT request
  static Future<dynamic> putRequest({
    required String endpoints,
    required Map<String, dynamic> body,
    Map<String, String>? headers,
  }) async {
    try {
      final response = await _dio.put(
        '/$endpoints',
        data: body,
        options: Options(
          headers: headers ?? {"Content-Type": "application/json"},
        ),
      );
      debugPrint("\nPUT Request Successful: ${response.data}\n");
      return ResposeHandle.handleResponse(response);
    } on DioException catch (e) {
      debugPrint(
        "\nPUT Request Failed: ${e.response?.statusCode} - ${e.response?.data}\n",
      );
      return null;
    } catch (error) {
      debugPrint("\nError in PUT Request: $error\n");
      return null;
    }
  }

  /// PATCH request
  static Future<dynamic> patchRequest({
    required String endpoints,
    required FormData formData,
    Map<String, String>? headers,
  }) async {
    try {
      final response = await _dio.patch(
        '${ApiEndpoints.baseUrl}/$endpoints',
        data: formData,
        options: Options(
          headers: headers ?? {"Content-Type": "multipart/form-data"},
        ),
      );

      debugPrint("\nPATCH Request Successful");
      debugPrint("Status: ${response.statusCode}");
      debugPrint("Data: ${response.data}");

      return ResposeHandle.handleResponse(response);
    } on DioException catch (e) {
      debugPrint("\n PATCH Request Failed");
      debugPrint("Status: ${e.response?.statusCode}");
      debugPrint("Error Data: ${e.response?.data}");
      return null;
    } catch (error) {
      debugPrint("\nError in PATCH Request: $error\n");
      return null;
    }
  }
}
