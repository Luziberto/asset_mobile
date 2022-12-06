// import 'package:bluebenx_hub/src/shared/errors/default_error_messages.dart';
// import 'package:connectivity_plus/connectivity_plus.dart';
// import 'package:dio/dio.dart';
// import 'package:stack_trace/stack_trace.dart';

// import 'app_error.dart';

// abstract class HttpError extends AppError {
//   final int code;

//   HttpError({
//     String slug = '',
//     String msg = '',
//     String stackTrace = '',
//     this.code = -2,
//   }) : super(
//           slug: slug,
//           msg: msg,
//           stackTrace: stackTrace.isNotEmpty
//               ? stackTrace
//               : Chain.current().terse.toString(),
//         );
// }

// class HttpNetworkError extends HttpError {
//   HttpNetworkError({
//     String slug = '',
//     String msg = '',
//     String stackTrace = '',
//   }) : super(
//           slug: slug,
//           msg: msg,
//           stackTrace: stackTrace,
//           code: -2,
//         );
// }

// class HttpUnknownError extends HttpError {
//   HttpUnknownError({
//     String slug = DefaultErrorMessages.unknownError,
//     String msg = DefaultErrorMessages.unknownError,
//     String stackTrace = '',
//   }) : super(
//           slug: slug,
//           msg: msg,
//           stackTrace: stackTrace,
//           code: -1,
//         );
// }

// class HttpBadRequestError extends HttpError {
//   final Map<String, dynamic> errors;

//   String get msg => errors['msg'] ?? '';

//   String get msgDev => errors['msg_dev'] ?? '';

//   HttpBadRequestError({
//     String slug = '',
//     String msg = '',
//     String stackTrace = '',
//     this.errors = const {},
//   }) : super(
//           slug: slug,
//           msg: msg,
//           stackTrace: stackTrace,
//           code: 400,
//         );
// }

// class HttpUnauthorizedError extends HttpError {
//   HttpUnauthorizedError({
//     String slug = '',
//     String msg = '',
//     String stackTrace = '',
//   }) : super(
//           slug: slug,
//           msg: msg,
//           stackTrace: stackTrace,
//           code: 401,
//         );
// }

// class HttpForbiddenError extends HttpError {
//   HttpForbiddenError({
//     String slug = '',
//     String msg = '',
//     String stackTrace = '',
//   }) : super(
//           slug: slug,
//           msg: msg,
//           stackTrace: stackTrace,
//           code: 403,
//         );
// }

// class HttpNotFoundError extends HttpError {
//   HttpNotFoundError({
//     String slug = '',
//     String msg = '',
//     String stackTrace = '',
//   }) : super(
//           slug: slug,
//           msg: msg,
//           stackTrace: stackTrace,
//           code: 404,
//         );
// }

// class HttpGoneError extends HttpError {
//   HttpGoneError({
//     String slug = '',
//     String msg = '',
//     String stackTrace = '',
//   }) : super(
//           slug: slug,
//           msg: msg,
//           stackTrace: stackTrace,
//           code: 410,
//         );
// }

// class UnprocessableEntityError extends HttpError {
//   final Map<String, dynamic> errors;

//   String get msg => errors['msg'] ?? '';

//   String get msgDev => errors['msg_dev'] ?? '';

//   UnprocessableEntityError({
//     String slug = '',
//     String msg = '',
//     String stackTrace = '',
//     this.errors = const {},
//   }) : super(
//           slug: slug,
//           msg: msg,
//           stackTrace: stackTrace,
//           code: 422,
//         );

//   @override
//   String toString() => '''[UnprocessableEntityError]: {
//             slug: $slug,
//             msg: $msg,
//             stackTrace: $stackTrace,
//             errors: $errors,
//         }''';
// }

// class HttpInternalServerError extends HttpError {
//   HttpInternalServerError({
//     String slug = '',
//     String msg = '',
//     String stackTrace = '',
//   }) : super(
//           slug: slug,
//           msg: msg,
//           stackTrace: stackTrace,
//           code: 500,
//         );

//   @override
//   String toString() => '''[HttpInternalServerError]: {
//             slug: $slug,
//             msg: $msg,
//             stackTrace: $stackTrace,
//         }''';
// }

// class NoInternetConnectionError extends HttpError {
//   NoInternetConnectionError({
//     String slug = '',
//     String msg = DefaultErrorMessages.noInternetConnectionError,
//     String stackTrace = '',
//   }) : super(
//           msg: msg,
//           slug: slug,
//           stackTrace: stackTrace.isNotEmpty
//               ? stackTrace
//               : Chain.current().terse.toString(),
//         );
// }

// // TODO:: Fazer uma progamacao defensiva pra tentar contornar a falha em acessar o slug
// // TODO:: Refatorar
// Future<HttpError> parseHttpError(DioError error, StackTrace stackTrace) async {
//   late String msg;

//   if (error.response != null &&
//       error.response?.headers.value('Content-Type') == 'application/json' &&
//       (error.response?.data as Map).containsKey('msg')) {
//     msg = error.response?.data["msg"];
//   } else {
//     msg = "Algo inesperado aconteceu. Tente novamente mais tarde.";
//   }

//   if (error.type == DioErrorType.response) {
//     switch (error.response?.statusCode) {
//       case 400:
//         return HttpBadRequestError(
//           slug: msg,
//           msg: msg,
//           errors: error.response?.data,
//         );
//       case 401:
//         return HttpUnauthorizedError(
//           slug: msg,
//           msg: msg,
//         );
//       case 403:
//         return HttpForbiddenError(
//           slug: msg,
//           msg: msg,
//         );
//       case 404:
//         return HttpNotFoundError(
//           slug: msg,
//           msg: msg,
//         );
//       case 410:
//         return HttpGoneError(
//           slug: msg,
//           msg: msg,
//         );
//       case 422:
//         return UnprocessableEntityError(
//           slug: msg,
//           msg: msg,
//           errors: error.response?.data,
//         );
//       case 500:
//         return HttpInternalServerError(
//           slug: DefaultErrorMessages.unknownError,
//           msg: DefaultErrorMessages.unknownError,
//         );
//       default:
//         return HttpUnknownError();
//     }
//   } else if (error.type == DioErrorType.connectTimeout ||
//       error.type == DioErrorType.receiveTimeout ||
//       error.type == DioErrorType.sendTimeout ||
//       error.type == DioErrorType.other) {
//     return await parseSocketException(error);
//   } else {
//     return HttpUnknownError();
//   }
// }

// Future<HttpError> parseSocketException(exception) async {
//   var connectivityResult = await (Connectivity().checkConnectivity());

//   if (connectivityResult == ConnectivityResult.none) {
//     return NoInternetConnectionError();
//   } else {
//     sendToSentry(exception);

//     return HttpNetworkError(
//       slug: exception.toString(),
//       msg: DefaultErrorMessages.unknownError,
//     );
//   }
// }
