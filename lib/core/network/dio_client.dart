import 'package:dio/dio.dart';

class ApiClient {
  final Dio _dio = Dio();

  ApiClient() {
    _dio.options.baseUrl = ''; // Set the API base URL
    _dio.options.connectTimeout = Duration(
      milliseconds: 5000,
    ); // Timeout duration in milliseconds
    _dio.options.receiveTimeout = Duration(
      milliseconds: 3000,
    );  // Timeout duration in milliseconds

    // Add interceptors (for example, for logging or adding auth tokens)
    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          options.headers['Authorization'] =
              'Bearer YOUR_API_TOKEN'; // Add auth token to headers
          return handler.next(options);
        },
        onError: (DioException  e, handler) {
          return handler.next(e);
        },
      ),
    );
  }

 // Dio get dio => _dio;

  // Perform GET request
  Future<Response> get(String path) async {
    try {
      return await _dio.get(path);
    } on DioException  catch (e) {
      throw Exception('API Request failed: ${e.message}');
    }
  }

  // Perform POST request
  Future<Response> post(
    String path, {
    required Map<String, dynamic> data,
  }) async {
    try {
      return await _dio.post(path, data: data);
    } on DioException  catch (e) {
      throw Exception('API Request failed: ${e.message}');
    }
  }
}
