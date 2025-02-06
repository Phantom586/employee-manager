// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'employee_edit_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EmployeeEditEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String employeeId) fetchEmployeeById,
    required TResult Function(Employee employee) editEmployee,
    required TResult Function() deleteEmployee,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String employeeId)? fetchEmployeeById,
    TResult? Function(Employee employee)? editEmployee,
    TResult? Function()? deleteEmployee,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String employeeId)? fetchEmployeeById,
    TResult Function(Employee employee)? editEmployee,
    TResult Function()? deleteEmployee,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchEmployeeById value) fetchEmployeeById,
    required TResult Function(_EditEmployee value) editEmployee,
    required TResult Function(_DeleteEmployee value) deleteEmployee,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchEmployeeById value)? fetchEmployeeById,
    TResult? Function(_EditEmployee value)? editEmployee,
    TResult? Function(_DeleteEmployee value)? deleteEmployee,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchEmployeeById value)? fetchEmployeeById,
    TResult Function(_EditEmployee value)? editEmployee,
    TResult Function(_DeleteEmployee value)? deleteEmployee,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeEditEventCopyWith<$Res> {
  factory $EmployeeEditEventCopyWith(
          EmployeeEditEvent value, $Res Function(EmployeeEditEvent) then) =
      _$EmployeeEditEventCopyWithImpl<$Res, EmployeeEditEvent>;
}

/// @nodoc
class _$EmployeeEditEventCopyWithImpl<$Res, $Val extends EmployeeEditEvent>
    implements $EmployeeEditEventCopyWith<$Res> {
  _$EmployeeEditEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EmployeeEditEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FetchEmployeeByIdImplCopyWith<$Res> {
  factory _$$FetchEmployeeByIdImplCopyWith(_$FetchEmployeeByIdImpl value,
          $Res Function(_$FetchEmployeeByIdImpl) then) =
      __$$FetchEmployeeByIdImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String employeeId});
}

/// @nodoc
class __$$FetchEmployeeByIdImplCopyWithImpl<$Res>
    extends _$EmployeeEditEventCopyWithImpl<$Res, _$FetchEmployeeByIdImpl>
    implements _$$FetchEmployeeByIdImplCopyWith<$Res> {
  __$$FetchEmployeeByIdImplCopyWithImpl(_$FetchEmployeeByIdImpl _value,
      $Res Function(_$FetchEmployeeByIdImpl) _then)
      : super(_value, _then);

  /// Create a copy of EmployeeEditEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employeeId = null,
  }) {
    return _then(_$FetchEmployeeByIdImpl(
      employeeId: null == employeeId
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchEmployeeByIdImpl implements _FetchEmployeeById {
  const _$FetchEmployeeByIdImpl({required this.employeeId});

  @override
  final String employeeId;

  @override
  String toString() {
    return 'EmployeeEditEvent.fetchEmployeeById(employeeId: $employeeId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchEmployeeByIdImpl &&
            (identical(other.employeeId, employeeId) ||
                other.employeeId == employeeId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, employeeId);

  /// Create a copy of EmployeeEditEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchEmployeeByIdImplCopyWith<_$FetchEmployeeByIdImpl> get copyWith =>
      __$$FetchEmployeeByIdImplCopyWithImpl<_$FetchEmployeeByIdImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String employeeId) fetchEmployeeById,
    required TResult Function(Employee employee) editEmployee,
    required TResult Function() deleteEmployee,
  }) {
    return fetchEmployeeById(employeeId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String employeeId)? fetchEmployeeById,
    TResult? Function(Employee employee)? editEmployee,
    TResult? Function()? deleteEmployee,
  }) {
    return fetchEmployeeById?.call(employeeId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String employeeId)? fetchEmployeeById,
    TResult Function(Employee employee)? editEmployee,
    TResult Function()? deleteEmployee,
    required TResult orElse(),
  }) {
    if (fetchEmployeeById != null) {
      return fetchEmployeeById(employeeId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchEmployeeById value) fetchEmployeeById,
    required TResult Function(_EditEmployee value) editEmployee,
    required TResult Function(_DeleteEmployee value) deleteEmployee,
  }) {
    return fetchEmployeeById(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchEmployeeById value)? fetchEmployeeById,
    TResult? Function(_EditEmployee value)? editEmployee,
    TResult? Function(_DeleteEmployee value)? deleteEmployee,
  }) {
    return fetchEmployeeById?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchEmployeeById value)? fetchEmployeeById,
    TResult Function(_EditEmployee value)? editEmployee,
    TResult Function(_DeleteEmployee value)? deleteEmployee,
    required TResult orElse(),
  }) {
    if (fetchEmployeeById != null) {
      return fetchEmployeeById(this);
    }
    return orElse();
  }
}

abstract class _FetchEmployeeById implements EmployeeEditEvent {
  const factory _FetchEmployeeById({required final String employeeId}) =
      _$FetchEmployeeByIdImpl;

  String get employeeId;

  /// Create a copy of EmployeeEditEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchEmployeeByIdImplCopyWith<_$FetchEmployeeByIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditEmployeeImplCopyWith<$Res> {
  factory _$$EditEmployeeImplCopyWith(
          _$EditEmployeeImpl value, $Res Function(_$EditEmployeeImpl) then) =
      __$$EditEmployeeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Employee employee});

  $EmployeeCopyWith<$Res> get employee;
}

/// @nodoc
class __$$EditEmployeeImplCopyWithImpl<$Res>
    extends _$EmployeeEditEventCopyWithImpl<$Res, _$EditEmployeeImpl>
    implements _$$EditEmployeeImplCopyWith<$Res> {
  __$$EditEmployeeImplCopyWithImpl(
      _$EditEmployeeImpl _value, $Res Function(_$EditEmployeeImpl) _then)
      : super(_value, _then);

  /// Create a copy of EmployeeEditEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employee = null,
  }) {
    return _then(_$EditEmployeeImpl(
      employee: null == employee
          ? _value.employee
          : employee // ignore: cast_nullable_to_non_nullable
              as Employee,
    ));
  }

  /// Create a copy of EmployeeEditEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EmployeeCopyWith<$Res> get employee {
    return $EmployeeCopyWith<$Res>(_value.employee, (value) {
      return _then(_value.copyWith(employee: value));
    });
  }
}

/// @nodoc

class _$EditEmployeeImpl implements _EditEmployee {
  const _$EditEmployeeImpl({required this.employee});

  @override
  final Employee employee;

  @override
  String toString() {
    return 'EmployeeEditEvent.editEmployee(employee: $employee)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditEmployeeImpl &&
            (identical(other.employee, employee) ||
                other.employee == employee));
  }

  @override
  int get hashCode => Object.hash(runtimeType, employee);

  /// Create a copy of EmployeeEditEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EditEmployeeImplCopyWith<_$EditEmployeeImpl> get copyWith =>
      __$$EditEmployeeImplCopyWithImpl<_$EditEmployeeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String employeeId) fetchEmployeeById,
    required TResult Function(Employee employee) editEmployee,
    required TResult Function() deleteEmployee,
  }) {
    return editEmployee(employee);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String employeeId)? fetchEmployeeById,
    TResult? Function(Employee employee)? editEmployee,
    TResult? Function()? deleteEmployee,
  }) {
    return editEmployee?.call(employee);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String employeeId)? fetchEmployeeById,
    TResult Function(Employee employee)? editEmployee,
    TResult Function()? deleteEmployee,
    required TResult orElse(),
  }) {
    if (editEmployee != null) {
      return editEmployee(employee);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchEmployeeById value) fetchEmployeeById,
    required TResult Function(_EditEmployee value) editEmployee,
    required TResult Function(_DeleteEmployee value) deleteEmployee,
  }) {
    return editEmployee(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchEmployeeById value)? fetchEmployeeById,
    TResult? Function(_EditEmployee value)? editEmployee,
    TResult? Function(_DeleteEmployee value)? deleteEmployee,
  }) {
    return editEmployee?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchEmployeeById value)? fetchEmployeeById,
    TResult Function(_EditEmployee value)? editEmployee,
    TResult Function(_DeleteEmployee value)? deleteEmployee,
    required TResult orElse(),
  }) {
    if (editEmployee != null) {
      return editEmployee(this);
    }
    return orElse();
  }
}

abstract class _EditEmployee implements EmployeeEditEvent {
  const factory _EditEmployee({required final Employee employee}) =
      _$EditEmployeeImpl;

  Employee get employee;

  /// Create a copy of EmployeeEditEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EditEmployeeImplCopyWith<_$EditEmployeeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteEmployeeImplCopyWith<$Res> {
  factory _$$DeleteEmployeeImplCopyWith(_$DeleteEmployeeImpl value,
          $Res Function(_$DeleteEmployeeImpl) then) =
      __$$DeleteEmployeeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeleteEmployeeImplCopyWithImpl<$Res>
    extends _$EmployeeEditEventCopyWithImpl<$Res, _$DeleteEmployeeImpl>
    implements _$$DeleteEmployeeImplCopyWith<$Res> {
  __$$DeleteEmployeeImplCopyWithImpl(
      _$DeleteEmployeeImpl _value, $Res Function(_$DeleteEmployeeImpl) _then)
      : super(_value, _then);

  /// Create a copy of EmployeeEditEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DeleteEmployeeImpl implements _DeleteEmployee {
  const _$DeleteEmployeeImpl();

  @override
  String toString() {
    return 'EmployeeEditEvent.deleteEmployee()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DeleteEmployeeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String employeeId) fetchEmployeeById,
    required TResult Function(Employee employee) editEmployee,
    required TResult Function() deleteEmployee,
  }) {
    return deleteEmployee();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String employeeId)? fetchEmployeeById,
    TResult? Function(Employee employee)? editEmployee,
    TResult? Function()? deleteEmployee,
  }) {
    return deleteEmployee?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String employeeId)? fetchEmployeeById,
    TResult Function(Employee employee)? editEmployee,
    TResult Function()? deleteEmployee,
    required TResult orElse(),
  }) {
    if (deleteEmployee != null) {
      return deleteEmployee();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchEmployeeById value) fetchEmployeeById,
    required TResult Function(_EditEmployee value) editEmployee,
    required TResult Function(_DeleteEmployee value) deleteEmployee,
  }) {
    return deleteEmployee(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchEmployeeById value)? fetchEmployeeById,
    TResult? Function(_EditEmployee value)? editEmployee,
    TResult? Function(_DeleteEmployee value)? deleteEmployee,
  }) {
    return deleteEmployee?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchEmployeeById value)? fetchEmployeeById,
    TResult Function(_EditEmployee value)? editEmployee,
    TResult Function(_DeleteEmployee value)? deleteEmployee,
    required TResult orElse(),
  }) {
    if (deleteEmployee != null) {
      return deleteEmployee(this);
    }
    return orElse();
  }
}

abstract class _DeleteEmployee implements EmployeeEditEvent {
  const factory _DeleteEmployee() = _$DeleteEmployeeImpl;
}

/// @nodoc
mixin _$EmployeeEditState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeEditStateCopyWith<$Res> {
  factory $EmployeeEditStateCopyWith(
          EmployeeEditState value, $Res Function(EmployeeEditState) then) =
      _$EmployeeEditStateCopyWithImpl<$Res, EmployeeEditState>;
}

/// @nodoc
class _$EmployeeEditStateCopyWithImpl<$Res, $Val extends EmployeeEditState>
    implements $EmployeeEditStateCopyWith<$Res> {
  _$EmployeeEditStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EmployeeEditState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$EmployeeEditStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of EmployeeEditState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'EmployeeEditState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements EmployeeEditState {
  const factory _Initial() = _$InitialImpl;
}
