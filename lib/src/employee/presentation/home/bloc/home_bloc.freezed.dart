// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchEmployees,
    required TResult Function() deleteEmployeeById,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchEmployees,
    TResult? Function()? deleteEmployeeById,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchEmployees,
    TResult Function()? deleteEmployeeById,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchEmployees value) fetchEmployees,
    required TResult Function(DeleteEmployeeById value) deleteEmployeeById,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchEmployees value)? fetchEmployees,
    TResult? Function(DeleteEmployeeById value)? deleteEmployeeById,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchEmployees value)? fetchEmployees,
    TResult Function(DeleteEmployeeById value)? deleteEmployeeById,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FetchEmployeesImplCopyWith<$Res> {
  factory _$$FetchEmployeesImplCopyWith(_$FetchEmployeesImpl value,
          $Res Function(_$FetchEmployeesImpl) then) =
      __$$FetchEmployeesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchEmployeesImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$FetchEmployeesImpl>
    implements _$$FetchEmployeesImplCopyWith<$Res> {
  __$$FetchEmployeesImplCopyWithImpl(
      _$FetchEmployeesImpl _value, $Res Function(_$FetchEmployeesImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchEmployeesImpl implements FetchEmployees {
  const _$FetchEmployeesImpl();

  @override
  String toString() {
    return 'HomeEvent.fetchEmployees()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchEmployeesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchEmployees,
    required TResult Function() deleteEmployeeById,
  }) {
    return fetchEmployees();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchEmployees,
    TResult? Function()? deleteEmployeeById,
  }) {
    return fetchEmployees?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchEmployees,
    TResult Function()? deleteEmployeeById,
    required TResult orElse(),
  }) {
    if (fetchEmployees != null) {
      return fetchEmployees();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchEmployees value) fetchEmployees,
    required TResult Function(DeleteEmployeeById value) deleteEmployeeById,
  }) {
    return fetchEmployees(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchEmployees value)? fetchEmployees,
    TResult? Function(DeleteEmployeeById value)? deleteEmployeeById,
  }) {
    return fetchEmployees?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchEmployees value)? fetchEmployees,
    TResult Function(DeleteEmployeeById value)? deleteEmployeeById,
    required TResult orElse(),
  }) {
    if (fetchEmployees != null) {
      return fetchEmployees(this);
    }
    return orElse();
  }
}

abstract class FetchEmployees implements HomeEvent {
  const factory FetchEmployees() = _$FetchEmployeesImpl;
}

/// @nodoc
abstract class _$$DeleteEmployeeByIdImplCopyWith<$Res> {
  factory _$$DeleteEmployeeByIdImplCopyWith(_$DeleteEmployeeByIdImpl value,
          $Res Function(_$DeleteEmployeeByIdImpl) then) =
      __$$DeleteEmployeeByIdImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeleteEmployeeByIdImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$DeleteEmployeeByIdImpl>
    implements _$$DeleteEmployeeByIdImplCopyWith<$Res> {
  __$$DeleteEmployeeByIdImplCopyWithImpl(_$DeleteEmployeeByIdImpl _value,
      $Res Function(_$DeleteEmployeeByIdImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DeleteEmployeeByIdImpl implements DeleteEmployeeById {
  const _$DeleteEmployeeByIdImpl();

  @override
  String toString() {
    return 'HomeEvent.deleteEmployeeById()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DeleteEmployeeByIdImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchEmployees,
    required TResult Function() deleteEmployeeById,
  }) {
    return deleteEmployeeById();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchEmployees,
    TResult? Function()? deleteEmployeeById,
  }) {
    return deleteEmployeeById?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchEmployees,
    TResult Function()? deleteEmployeeById,
    required TResult orElse(),
  }) {
    if (deleteEmployeeById != null) {
      return deleteEmployeeById();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchEmployees value) fetchEmployees,
    required TResult Function(DeleteEmployeeById value) deleteEmployeeById,
  }) {
    return deleteEmployeeById(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchEmployees value)? fetchEmployees,
    TResult? Function(DeleteEmployeeById value)? deleteEmployeeById,
  }) {
    return deleteEmployeeById?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchEmployees value)? fetchEmployees,
    TResult Function(DeleteEmployeeById value)? deleteEmployeeById,
    required TResult orElse(),
  }) {
    if (deleteEmployeeById != null) {
      return deleteEmployeeById(this);
    }
    return orElse();
  }
}

abstract class DeleteEmployeeById implements HomeEvent {
  const factory DeleteEmployeeById() = _$DeleteEmployeeByIdImpl;
}

/// @nodoc
mixin _$HomeState {
  List<Employee> get currentEmployees => throw _privateConstructorUsedError;
  List<Employee> get previousEmployees => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {List<Employee> currentEmployees,
      List<Employee> previousEmployees,
      bool isLoading});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentEmployees = null,
    Object? previousEmployees = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      currentEmployees: null == currentEmployees
          ? _value.currentEmployees
          : currentEmployees // ignore: cast_nullable_to_non_nullable
              as List<Employee>,
      previousEmployees: null == previousEmployees
          ? _value.previousEmployees
          : previousEmployees // ignore: cast_nullable_to_non_nullable
              as List<Employee>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Employee> currentEmployees,
      List<Employee> previousEmployees,
      bool isLoading});
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentEmployees = null,
    Object? previousEmployees = null,
    Object? isLoading = null,
  }) {
    return _then(_$HomeStateImpl(
      currentEmployees: null == currentEmployees
          ? _value._currentEmployees
          : currentEmployees // ignore: cast_nullable_to_non_nullable
              as List<Employee>,
      previousEmployees: null == previousEmployees
          ? _value._previousEmployees
          : previousEmployees // ignore: cast_nullable_to_non_nullable
              as List<Employee>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$HomeStateImpl implements _HomeState {
  const _$HomeStateImpl(
      {required final List<Employee> currentEmployees,
      required final List<Employee> previousEmployees,
      required this.isLoading})
      : _currentEmployees = currentEmployees,
        _previousEmployees = previousEmployees;

  final List<Employee> _currentEmployees;
  @override
  List<Employee> get currentEmployees {
    if (_currentEmployees is EqualUnmodifiableListView)
      return _currentEmployees;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_currentEmployees);
  }

  final List<Employee> _previousEmployees;
  @override
  List<Employee> get previousEmployees {
    if (_previousEmployees is EqualUnmodifiableListView)
      return _previousEmployees;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_previousEmployees);
  }

  @override
  final bool isLoading;

  @override
  String toString() {
    return 'HomeState(currentEmployees: $currentEmployees, previousEmployees: $previousEmployees, isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            const DeepCollectionEquality()
                .equals(other._currentEmployees, _currentEmployees) &&
            const DeepCollectionEquality()
                .equals(other._previousEmployees, _previousEmployees) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_currentEmployees),
      const DeepCollectionEquality().hash(_previousEmployees),
      isLoading);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {required final List<Employee> currentEmployees,
      required final List<Employee> previousEmployees,
      required final bool isLoading}) = _$HomeStateImpl;

  @override
  List<Employee> get currentEmployees;
  @override
  List<Employee> get previousEmployees;
  @override
  bool get isLoading;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
