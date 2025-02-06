// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'employee_add_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EmployeeAddEvent {
  Employee get employee => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Employee employee) addEmployee,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Employee employee)? addEmployee,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Employee employee)? addEmployee,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddEmployee value) addEmployee,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddEmployee value)? addEmployee,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddEmployee value)? addEmployee,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of EmployeeAddEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EmployeeAddEventCopyWith<EmployeeAddEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeAddEventCopyWith<$Res> {
  factory $EmployeeAddEventCopyWith(
          EmployeeAddEvent value, $Res Function(EmployeeAddEvent) then) =
      _$EmployeeAddEventCopyWithImpl<$Res, EmployeeAddEvent>;
  @useResult
  $Res call({Employee employee});

  $EmployeeCopyWith<$Res> get employee;
}

/// @nodoc
class _$EmployeeAddEventCopyWithImpl<$Res, $Val extends EmployeeAddEvent>
    implements $EmployeeAddEventCopyWith<$Res> {
  _$EmployeeAddEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EmployeeAddEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employee = null,
  }) {
    return _then(_value.copyWith(
      employee: null == employee
          ? _value.employee
          : employee // ignore: cast_nullable_to_non_nullable
              as Employee,
    ) as $Val);
  }

  /// Create a copy of EmployeeAddEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EmployeeCopyWith<$Res> get employee {
    return $EmployeeCopyWith<$Res>(_value.employee, (value) {
      return _then(_value.copyWith(employee: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AddEmployeeImplCopyWith<$Res>
    implements $EmployeeAddEventCopyWith<$Res> {
  factory _$$AddEmployeeImplCopyWith(
          _$AddEmployeeImpl value, $Res Function(_$AddEmployeeImpl) then) =
      __$$AddEmployeeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Employee employee});

  @override
  $EmployeeCopyWith<$Res> get employee;
}

/// @nodoc
class __$$AddEmployeeImplCopyWithImpl<$Res>
    extends _$EmployeeAddEventCopyWithImpl<$Res, _$AddEmployeeImpl>
    implements _$$AddEmployeeImplCopyWith<$Res> {
  __$$AddEmployeeImplCopyWithImpl(
      _$AddEmployeeImpl _value, $Res Function(_$AddEmployeeImpl) _then)
      : super(_value, _then);

  /// Create a copy of EmployeeAddEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employee = null,
  }) {
    return _then(_$AddEmployeeImpl(
      employee: null == employee
          ? _value.employee
          : employee // ignore: cast_nullable_to_non_nullable
              as Employee,
    ));
  }
}

/// @nodoc

class _$AddEmployeeImpl implements AddEmployee {
  const _$AddEmployeeImpl({required this.employee});

  @override
  final Employee employee;

  @override
  String toString() {
    return 'EmployeeAddEvent.addEmployee(employee: $employee)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddEmployeeImpl &&
            (identical(other.employee, employee) ||
                other.employee == employee));
  }

  @override
  int get hashCode => Object.hash(runtimeType, employee);

  /// Create a copy of EmployeeAddEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddEmployeeImplCopyWith<_$AddEmployeeImpl> get copyWith =>
      __$$AddEmployeeImplCopyWithImpl<_$AddEmployeeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Employee employee) addEmployee,
  }) {
    return addEmployee(employee);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Employee employee)? addEmployee,
  }) {
    return addEmployee?.call(employee);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Employee employee)? addEmployee,
    required TResult orElse(),
  }) {
    if (addEmployee != null) {
      return addEmployee(employee);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddEmployee value) addEmployee,
  }) {
    return addEmployee(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddEmployee value)? addEmployee,
  }) {
    return addEmployee?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddEmployee value)? addEmployee,
    required TResult orElse(),
  }) {
    if (addEmployee != null) {
      return addEmployee(this);
    }
    return orElse();
  }
}

abstract class AddEmployee implements EmployeeAddEvent {
  const factory AddEmployee({required final Employee employee}) =
      _$AddEmployeeImpl;

  @override
  Employee get employee;

  /// Create a copy of EmployeeAddEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddEmployeeImplCopyWith<_$AddEmployeeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EmployeeAddState {
  bool get isLoading => throw _privateConstructorUsedError;

  /// Create a copy of EmployeeAddState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EmployeeAddStateCopyWith<EmployeeAddState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeAddStateCopyWith<$Res> {
  factory $EmployeeAddStateCopyWith(
          EmployeeAddState value, $Res Function(EmployeeAddState) then) =
      _$EmployeeAddStateCopyWithImpl<$Res, EmployeeAddState>;
  @useResult
  $Res call({bool isLoading});
}

/// @nodoc
class _$EmployeeAddStateCopyWithImpl<$Res, $Val extends EmployeeAddState>
    implements $EmployeeAddStateCopyWith<$Res> {
  _$EmployeeAddStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EmployeeAddState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EmployeeAddStateImplCopyWith<$Res>
    implements $EmployeeAddStateCopyWith<$Res> {
  factory _$$EmployeeAddStateImplCopyWith(_$EmployeeAddStateImpl value,
          $Res Function(_$EmployeeAddStateImpl) then) =
      __$$EmployeeAddStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading});
}

/// @nodoc
class __$$EmployeeAddStateImplCopyWithImpl<$Res>
    extends _$EmployeeAddStateCopyWithImpl<$Res, _$EmployeeAddStateImpl>
    implements _$$EmployeeAddStateImplCopyWith<$Res> {
  __$$EmployeeAddStateImplCopyWithImpl(_$EmployeeAddStateImpl _value,
      $Res Function(_$EmployeeAddStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of EmployeeAddState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
  }) {
    return _then(_$EmployeeAddStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$EmployeeAddStateImpl implements _EmployeeAddState {
  const _$EmployeeAddStateImpl({required this.isLoading});

  @override
  final bool isLoading;

  @override
  String toString() {
    return 'EmployeeAddState(isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmployeeAddStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading);

  /// Create a copy of EmployeeAddState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EmployeeAddStateImplCopyWith<_$EmployeeAddStateImpl> get copyWith =>
      __$$EmployeeAddStateImplCopyWithImpl<_$EmployeeAddStateImpl>(
          this, _$identity);
}

abstract class _EmployeeAddState implements EmployeeAddState {
  const factory _EmployeeAddState({required final bool isLoading}) =
      _$EmployeeAddStateImpl;

  @override
  bool get isLoading;

  /// Create a copy of EmployeeAddState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EmployeeAddStateImplCopyWith<_$EmployeeAddStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
