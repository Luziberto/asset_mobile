// import 'package:asset_mobile/src/shared/errors/app_error.dart';

// // abstract class Result<ResultType> {
// //   final ResultType _data;
// //   final AppError _error;

// //   Result({
// //     ResultType data,
// //     AppError error,
// //   })  : _data = data,
// //         _error = error;

// //   T handle<T>({
// //     required T Function(ResultType data) onSuccess,
// //     required T Function(AppError error) onFailure,
// //   }) {
// //     if (this is Success) {
// //       return onSuccess(_data);
// //     } else {
// //       return onFailure(_error);
// //     }
// //   }
// // }

// // class Success<T> extends Result<T> {
// //   Success(T data) : super(data: data, error: null);
// // }

// // class Failure<T> extends Result<T> {
// //   Failure(AppError error) : super(data: null, error: error);
// // }

// @freezed
// class Result<ResultType> {
//   const Result._();
//   const factory Result.success(ResultType data) = Success<ResultType>;
//   const factory Result.failure(AppError error) = Failure;

//   T handle<T>({
//     required T Function(ResultType data) onSuccess,
//     required T Function(AppError error) onFailure,
//   }) {
//     return this.map<T>(
//       success: (success) => onSuccess(success.data),
//       failure: (failure) => onFailure(failure.error),
//     );
//   }
// }
