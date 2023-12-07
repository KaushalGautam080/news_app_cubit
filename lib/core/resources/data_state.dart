import 'package:equatable/equatable.dart';

abstract class DataState<T> extends Equatable {
  final T? data;
  final String? error;
  final String? errorMsg;
  final ErrorType? errorType;
  const DataState({
    this.data,
    this.error,
    this.errorMsg,
    this.errorType,
  });
}

class DataSuccess<T> extends DataState<T> {
  const DataSuccess({required T data}) : super(data: data);

  @override
  List<Object?> get props => [data];
}

class DataFailed<T> extends DataState<T> {
  const DataFailed(
      {required String error,
      required String errorMsg,
      ErrorType errorType = ErrorType.unknown})
      : super(
          error: error,
          errorMsg: errorMsg,
          errorType: errorType,
        );

  @override
  List<Object?> get props => [error, errorMsg, errorType];
}

class NetworkFailedState<T> extends DataState<T> {
  const NetworkFailedState({
    String error = "Network connection error",
    String errorMsg = "Network connection failed",
    ErrorType errorType = ErrorType.noNetwork,
  }) : super(error: error, errorMsg: errorMsg, errorType: errorType);

  @override
  List<Object?> get props => [error, errorMsg, errorType];
}

enum ErrorType {
  unknown,
  dioException,
  isarException,
  sharedPreferenceException,
  noNetwork,
  socketTimeOut,
  tokenExpired,
  invalidUserCredential,
  server,
  notFound,
}
