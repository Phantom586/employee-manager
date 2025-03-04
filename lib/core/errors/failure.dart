import 'package:employee_manager/core/index.dart' show APIException;
import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  const Failure({required this.message, required this.statusCode});

  final String? message;
  final int? statusCode;

  @override
  List<Object?> get props => [message, statusCode];
}

class DatabaseFailure extends Failure {
  const DatabaseFailure({required super.message, required super.statusCode});

  factory DatabaseFailure.fromException({required APIException exception}) =>
      DatabaseFailure(
        message: exception.message,
        statusCode: exception.statusCode,
      );
}
