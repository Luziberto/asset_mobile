// import 'package:bluebenx_hub/src/shared/errors/default_error_messages.dart';
// import 'package:sentry_flutter/sentry_flutter.dart';
// import 'package:stack_trace/stack_trace.dart';

// abstract class AppError {
//   final String slug;
//   final String msg;
//   final String stackTrace;

//   AppError({
//     this.slug = '',
//     this.msg = '',
//     this.stackTrace = '',
//   });

//   @override
//   bool operator ==(other) {
//     return (other.runtimeType == this.runtimeType) &&
//         (other as AppError).slug == slug;
//   }
// }

// Future<void> sendToSentry(dynamic exception) async {
//   await Sentry.captureException(
//     exception,
//     stackTrace: Chain.current().terse,
//   );
// }

// class AppUnknownError extends AppError {
//   AppUnknownError({
//     String slug = '',
//     String msg = DefaultErrorMessages.unknownError,
//     String stackTrace = '',
//   }) : super(
//           slug: slug,
//           msg: msg,
//           stackTrace: stackTrace.isNotEmpty
//               ? stackTrace
//               : Chain.current().terse.toString(),
//         );

//   @override
//   String toString() => '''[AppUnknownError]: {
//           slug: $slug,
//           msg: $msg,
//           stackTrace: $stackTrace,
//         }''';
// }

// class ParseError extends AppError {
//   ParseError({
//     String slug = '',
//     String msg = DefaultErrorMessages.unknownError,
//     String stackTrace = '',
//   }) : super(
//           slug: slug,
//           msg: msg,
//           stackTrace: stackTrace.isNotEmpty
//               ? stackTrace
//               : Chain.current().terse.toString(),
//         );

//   @override
//   String toString() => '''[ParseError]: {
//           slug: $slug,
//           msg: $msg,
//           stackTrace: $stackTrace,
//         }''';
// }

// class EntityNotFitError extends AppError {
//   EntityNotFitError({
//     String slug = '',
//     String msg = DefaultErrorMessages.unknownError,
//     String stackTrace = '',
//   }) : super(
//           slug: slug,
//           msg: msg,
//           stackTrace: stackTrace.isNotEmpty
//               ? stackTrace
//               : Chain.current().terse.toString(),
//         );

//   @override
//   String toString() => '''[EntityNotFitError]: {
//           slug: $slug,
//           msg: $msg,
//           stackTrace: $stackTrace,
//         }''';
// }

// class FailedToShareError extends AppError {
//   FailedToShareError({
//     String slug = '',
//     String msg = DefaultErrorMessages.unknownError,
//     String stackTrace = '',
//   }) : super(
//           slug: slug,
//           msg: msg,
//           stackTrace: stackTrace.isNotEmpty
//               ? stackTrace
//               : Chain.current().terse.toString(),
//         );

//   @override
//   String toString() => '''[FailedToShareError]: {
//           slug: $slug,
//           msg: $msg,
//           stackTrace: $stackTrace,
//         }''';
// }

// class TokenNotFoundError extends AppError {
//   TokenNotFoundError({
//     String slug = '',
//     String msg = DefaultErrorMessages.unknownError,
//     String stackTrace = '',
//   }) : super(
//           slug: slug,
//           msg: msg,
//           stackTrace: stackTrace.isNotEmpty
//               ? stackTrace
//               : Chain.current().terse.toString(),
//         );

//   @override
//   String toString() => '''[NotFoundError]: {
//           slug: $slug,
//           msg: $msg,
//           stackTrace: $stackTrace,
//         }''';
// }
