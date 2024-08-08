import 'package:dio/dio.dart';
import 'package:islamic/model/network/end_points.dart';

class DioHelper {
  static late Dio dio;

  static init() {
    dio = Dio(
      BaseOptions(
          baseUrl: baseUrl, receiveDataWhenStatusError: true, headers: {
        'Accept':'application/json'
      }),
    );
  }

  static Future<Response> get(
      {required String endPoint,
        Map<String, dynamic>? queryParameters,
        String? token}) async {
    try {
      dio.options.headers = {'Authorization': token};
      var response = await dio.get(endPoint, queryParameters: queryParameters);
      return response;
    } catch (e) {
      rethrow;
    }
  }

  static Future<Response> put(
      {required String endPoint,
        Map<String, dynamic>? queryParameters,
        String? token,
        Map<String, dynamic>? data}) async {
    try {
      dio.options.headers = {'Authorization': token};
      var response =
      await dio.put(endPoint, queryParameters: queryParameters, data: data);
      return response;
    } catch (e) {
      rethrow;
    }
  }

  static Future<Response> delete(
      {required String endPoint,
        Map<String, dynamic>? queryParameters,
        String? token,
        Map<String, dynamic>? data}) async {
    try {
      dio.options.headers = {'Authorization': token};
      var response = await dio.delete(endPoint,
          queryParameters: queryParameters, data: data);
      return response;
    } catch (e) {
      rethrow;
    }
  }

  static Future<Response> post(
      {required String endPoint,
        Map<String, dynamic>? queryParameters,
        String? token,
        Map<String, dynamic>? data}) async {
    try {
      dio.options.headers = {'Authorization': token};
      var response = await dio.post(endPoint,
          queryParameters: queryParameters, data: data);
      return response;
    } catch (e) {
      rethrow;
    }
  }

  static Future<Response> patch(
      {required String endPoint,
        Map<String, dynamic>? queryParameters,
        String? token,
        Map<String, dynamic>? data}) async {
    try {
      dio.options.headers = {'Authorization': token};
      var response = await dio.patch(endPoint,
          queryParameters: queryParameters, data: data);
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
