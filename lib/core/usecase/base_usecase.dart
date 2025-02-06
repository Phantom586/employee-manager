import 'package:employee_manager/core/index.dart';

abstract class BaseUsecaseWithParams<T, Params> {
  ResultFuture<T> call(Params p);
}

abstract class BaseUsecase<T> {
  ResultFuture<T> call();
}
