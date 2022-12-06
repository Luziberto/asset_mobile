import 'package:asset_mobile/src/shared/errors/app_error.dart';
import 'package:asset_mobile/src/shared/errors/http_error.dart';
import 'package:dio/dio.dart';

const Duration MOCK_DELAY = Duration(seconds: 0);

class ApiRepository {
  final Dio _httpClient;

  ApiRepository({
    required Dio httpClient,
  }) : _httpClient = httpClient;

  // Requests
  // Future<Result> get({
  //   required String url,
  //   Map<String, dynamic> queryParams = const {},
  // }) async {
  //   await Future.delayed(MOCK_DELAY);
  //   try {
  //     final Response response = await _httpClient.get(
  //       url,
  //       queryParameters: queryParams
  //     );

  //     return Success(response.data);
  //   } on DioError catch (exception, stackTrace) {
  //     final HttpError error = await parseHttpError(exception, stackTrace);
  //     await _handleErrors(error, exception, stackTrace);

  //     return Failure(error);
  //   } catch (e) {
  //     sendToSentry(e);

  //     return Failure(
  //       HttpUnknownError(
  //         slug: DefaultErrorMessages.unknownError,
  //       ),
  //     );
  //   }
  // }

  Future post({
    required String url,
    Map<String, dynamic> body = const {},
  }) async {
    await Future.delayed(MOCK_DELAY);
    try {
      final Response response = await _httpClient.post(url, data: body);
      return response.data;
    } on DioError catch (exception, stackTrace) {
      // final HttpError error = await parseHttpError(exception, stackTrace);
      // await _handleErrors(error, exception, stackTrace);
      // print(error);
      // return error;
    } catch (exception) {
      // sendToSentry(exception);

      // return Failure(
      //   HttpUnknownError(
      //     slug: exception.toString(),
      //   ),
      // );
    }
  }

  // Future<Result> patch({
  //   required String url,
  //   Map<String, dynamic> body = const {},
  // }) async {
  //   await Future.delayed(MOCK_DELAY);
  //   try {
  //     final Response response = await _httpClient.patch(
  //       url,
  //       data: body
  //     );
  //     return Success(response.data);
  //   } on DioError catch (exception, stackTrace) {
  //     final HttpError error = await parseHttpError(exception, stackTrace);
  //     await _handleErrors(error, exception, stackTrace);

  //     return Failure(error);
  //   } catch (exception) {
  //     sendToSentry(exception);

  //     return Failure(
  //       HttpUnknownError(
  //         slug: exception.toString(),
  //       ),
  //     );
  //   }
  // }

  // Future<Result> put({
  //   required String url,
  //   Map<String, dynamic> body = const {},
  // }) async {
  //   await Future.delayed(MOCK_DELAY);
  //   try {
  //     final Response response = await _httpClient.put(
  //       url,
  //       data: body
  //     );
  //     return Success(response.data);
  //   } on DioError catch (exception, stackTrace) {
  //     final HttpError error = await parseHttpError(exception, stackTrace);
  //     await _handleErrors(error, exception, stackTrace);

  //     return Failure(error);
  //   } catch (exception) {
  //     sendToSentry(exception);

  //     return Failure(
  //       HttpUnknownError(
  //         slug: exception.toString(),
  //       ),
  //     );
  //   }
  // }

  // Future<Result> delete({
  //   required String url,
  //   Map<String, dynamic> body = const {},
  // }) async {
  //   await Future.delayed(MOCK_DELAY);
  //   try {
  //     final Response response = await _httpClient.delete(
  //       url,
  //       data: body
  //     );
  //     return Success(response.data);
  //   } on DioError catch (exception, stackTrace) {
  //     final HttpError error = await parseHttpError(exception, stackTrace);
  //     await _handleErrors(error, exception, stackTrace);

  //     return Failure(error);
  //   } catch (exception) {
  //     sendToSentry(exception);

  //     return Failure(
  //       HttpUnknownError(
  //         slug: exception.toString(),
  //       ),
  //     );
  //   }
  // }
}
