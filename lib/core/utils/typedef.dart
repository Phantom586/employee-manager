import 'package:dartz/dartz.dart';
import 'package:employee_manager/core/errors/failure.dart';

typedef ResultFuture<T> = Future<Either<Failure, T>>;
typedef ResultVoid = ResultFuture<void>;
typedef Result<T> = Either<Failure, T>;
