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
    required TResult Function(int employeeId) fetchEmployeeById,
    required TResult Function(Employee employee) editEmployeeById,
    required TResult Function(int employeeId) deleteEmployeeById,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int employeeId)? fetchEmployeeById,
    TResult? Function(Employee employee)? editEmployeeById,
    TResult? Function(int employeeId)? deleteEmployeeById,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int employeeId)? fetchEmployeeById,
    TResult Function(Employee employee)? editEmployeeById,
    TResult Function(int employeeId)? deleteEmployeeById,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchEmployeeById value) fetchEmployeeById,
    required TResult Function(EditEmployeeById value) editEmployeeById,
    required TResult Function(DeleteEmployeeById value) deleteEmployeeById,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchEmployeeById value)? fetchEmployeeById,
    TResult? Function(EditEmployeeById value)? editEmployeeById,
    TResult? Function(DeleteEmployeeById value)? deleteEmployeeById,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchEmployeeById value)? fetchEmployeeById,
    TResult Function(EditEmployeeById value)? editEmployeeById,
    TResult Function(DeleteEmployeeById value)? deleteEmployeeById,
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
  $Res call({int employeeId});
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
              as int,
    ));
  }
}

/// @nodoc

class _$FetchEmployeeByIdImpl implements FetchEmployeeById {
  const _$FetchEmployeeByIdImpl({required this.employeeId});

  @override
  final int employeeId;

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
    required TResult Function(int employeeId) fetchEmployeeById,
    required TResult Function(Employee employee) editEmployeeById,
    required TResult Function(int employeeId) deleteEmployeeById,
  }) {
    return fetchEmployeeById(employeeId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int employeeId)? fetchEmployeeById,
    TResult? Function(Employee employee)? editEmployeeById,
    TResult? Function(int employeeId)? deleteEmployeeById,
  }) {
    return fetchEmployeeById?.call(employeeId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int employeeId)? fetchEmployeeById,
    TResult Function(Employee employee)? editEmployeeById,
    TResult Function(int employeeId)? deleteEmployeeById,
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
    required TResult Function(FetchEmployeeById value) fetchEmployeeById,
    required TResult Function(EditEmployeeById value) editEmployeeById,
    required TResult Function(DeleteEmployeeById value) deleteEmployeeById,
  }) {
    return fetchEmployeeById(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchEmployeeById value)? fetchEmployeeById,
    TResult? Function(EditEmployeeById value)? editEmployeeById,
    TResult? Function(DeleteEmployeeById value)? deleteEmployeeById,
  }) {
    return fetchEmployeeById?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchEmployeeById value)? fetchEmployeeById,
    TResult Function(EditEmployeeById value)? editEmployeeById,
    TResult Function(DeleteEmployeeById value)? deleteEmployeeById,
    required TResult orElse(),
  }) {
    if (fetchEmployeeById != null) {
      return fetchEmployeeById(this);
    }
    return orElse();
  }
}

abstract class FetchEmployeeById implements EmployeeEditEvent {
  const factory FetchEmployeeById({required final int employeeId}) =
      _$FetchEmployeeByIdImpl;

  int get employeeId;

  /// Create a copy of EmployeeEditEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchEmployeeByIdImplCopyWith<_$FetchEmployeeByIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditEmployeeByIdImplCopyWith<$Res> {
  factory _$$EditEmployeeByIdImplCopyWith(_$EditEmployeeByIdImpl value,
          $Res Function(_$EditEmployeeByIdImpl) then) =
      __$$EditEmployeeByIdImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Employee employee});

  $EmployeeCopyWith<$Res> get employee;
}

/// @nodoc
class __$$EditEmployeeByIdImplCopyWithImpl<$Res>
    extends _$EmployeeEditEventCopyWithImpl<$Res, _$EditEmployeeByIdImpl>
    implements _$$EditEmployeeByIdImplCopyWith<$Res> {
  __$$EditEmployeeByIdImplCopyWithImpl(_$EditEmployeeByIdImpl _value,
      $Res Function(_$EditEmployeeByIdImpl) _then)
      : super(_value, _then);

  /// Create a copy of EmployeeEditEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employee = null,
  }) {
    return _then(_$EditEmployeeByIdImpl(
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

class _$EditEmployeeByIdImpl implements EditEmployeeById {
  const _$EditEmployeeByIdImpl({required this.employee});

  @override
  final Employee employee;

  @override
  String toString() {
    return 'EmployeeEditEvent.editEmployeeById(employee: $employee)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditEmployeeByIdImpl &&
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
  _$$EditEmployeeByIdImplCopyWith<_$EditEmployeeByIdImpl> get copyWith =>
      __$$EditEmployeeByIdImplCopyWithImpl<_$EditEmployeeByIdImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int employeeId) fetchEmployeeById,
    required TResult Function(Employee employee) editEmployeeById,
    required TResult Function(int employeeId) deleteEmployeeById,
  }) {
    return editEmployeeById(employee);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int employeeId)? fetchEmployeeById,
    TResult? Function(Employee employee)? editEmployeeById,
    TResult? Function(int employeeId)? deleteEmployeeById,
  }) {
    return editEmployeeById?.call(employee);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int employeeId)? fetchEmployeeById,
    TResult Function(Employee employee)? editEmployeeById,
    TResult Function(int employeeId)? deleteEmployeeById,
    required TResult orElse(),
  }) {
    if (editEmployeeById != null) {
      return editEmployeeById(employee);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchEmployeeById value) fetchEmployeeById,
    required TResult Function(EditEmployeeById value) editEmployeeById,
    required TResult Function(DeleteEmployeeById value) deleteEmployeeById,
  }) {
    return editEmployeeById(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchEmployeeById value)? fetchEmployeeById,
    TResult? Function(EditEmployeeById value)? editEmployeeById,
    TResult? Function(DeleteEmployeeById value)? deleteEmployeeById,
  }) {
    return editEmployeeById?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchEmployeeById value)? fetchEmployeeById,
    TResult Function(EditEmployeeById value)? editEmployeeById,
    TResult Function(DeleteEmployeeById value)? deleteEmployeeById,
    required TResult orElse(),
  }) {
    if (editEmployeeById != null) {
      return editEmployeeById(this);
    }
    return orElse();
  }
}

abstract class EditEmployeeById implements EmployeeEditEvent {
  const factory EditEmployeeById({required final Employee employee}) =
      _$EditEmployeeByIdImpl;

  Employee get employee;

  /// Create a copy of EmployeeEditEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EditEmployeeByIdImplCopyWith<_$EditEmployeeByIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteEmployeeByIdImplCopyWith<$Res> {
  factory _$$DeleteEmployeeByIdImplCopyWith(_$DeleteEmployeeByIdImpl value,
          $Res Function(_$DeleteEmployeeByIdImpl) then) =
      __$$DeleteEmployeeByIdImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int employeeId});
}

/// @nodoc
class __$$DeleteEmployeeByIdImplCopyWithImpl<$Res>
    extends _$EmployeeEditEventCopyWithImpl<$Res, _$DeleteEmployeeByIdImpl>
    implements _$$DeleteEmployeeByIdImplCopyWith<$Res> {
  __$$DeleteEmployeeByIdImplCopyWithImpl(_$DeleteEmployeeByIdImpl _value,
      $Res Function(_$DeleteEmployeeByIdImpl) _then)
      : super(_value, _then);

  /// Create a copy of EmployeeEditEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employeeId = null,
  }) {
    return _then(_$DeleteEmployeeByIdImpl(
      employeeId: null == employeeId
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteEmployeeByIdImpl implements DeleteEmployeeById {
  const _$DeleteEmployeeByIdImpl({required this.employeeId});

  @override
  final int employeeId;

  @override
  String toString() {
    return 'EmployeeEditEvent.deleteEmployeeById(employeeId: $employeeId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteEmployeeByIdImpl &&
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
  _$$DeleteEmployeeByIdImplCopyWith<_$DeleteEmployeeByIdImpl> get copyWith =>
      __$$DeleteEmployeeByIdImplCopyWithImpl<_$DeleteEmployeeByIdImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int employeeId) fetchEmployeeById,
    required TResult Function(Employee employee) editEmployeeById,
    required TResult Function(int employeeId) deleteEmployeeById,
  }) {
    return deleteEmployeeById(employeeId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int employeeId)? fetchEmployeeById,
    TResult? Function(Employee employee)? editEmployeeById,
    TResult? Function(int employeeId)? deleteEmployeeById,
  }) {
    return deleteEmployeeById?.call(employeeId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int employeeId)? fetchEmployeeById,
    TResult Function(Employee employee)? editEmployeeById,
    TResult Function(int employeeId)? deleteEmployeeById,
    required TResult orElse(),
  }) {
    if (deleteEmployeeById != null) {
      return deleteEmployeeById(employeeId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchEmployeeById value) fetchEmployeeById,
    required TResult Function(EditEmployeeById value) editEmployeeById,
    required TResult Function(DeleteEmployeeById value) deleteEmployeeById,
  }) {
    return deleteEmployeeById(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchEmployeeById value)? fetchEmployeeById,
    TResult? Function(EditEmployeeById value)? editEmployeeById,
    TResult? Function(DeleteEmployeeById value)? deleteEmployeeById,
  }) {
    return deleteEmployeeById?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchEmployeeById value)? fetchEmployeeById,
    TResult Function(EditEmployeeById value)? editEmployeeById,
    TResult Function(DeleteEmployeeById value)? deleteEmployeeById,
    required TResult orElse(),
  }) {
    if (deleteEmployeeById != null) {
      return deleteEmployeeById(this);
    }
    return orElse();
  }
}

abstract class DeleteEmployeeById implements EmployeeEditEvent {
  const factory DeleteEmployeeById({required final int employeeId}) =
      _$DeleteEmployeeByIdImpl;

  int get employeeId;

  /// Create a copy of EmployeeEditEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteEmployeeByIdImplCopyWith<_$DeleteEmployeeByIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EmployeeEditState {
  Employee? get employee => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  /// Create a copy of EmployeeEditState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EmployeeEditStateCopyWith<EmployeeEditState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeEditStateCopyWith<$Res> {
  factory $EmployeeEditStateCopyWith(
          EmployeeEditState value, $Res Function(EmployeeEditState) then) =
      _$EmployeeEditStateCopyWithImpl<$Res, EmployeeEditState>;
  @useResult
  $Res call({Employee? employee, bool isLoading});

  $EmployeeCopyWith<$Res>? get employee;
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
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employee = freezed,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      employee: freezed == employee
          ? _value.employee
          : employee // ignore: cast_nullable_to_non_nullable
              as Employee?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of EmployeeEditState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EmployeeCopyWith<$Res>? get employee {
    if (_value.employee == null) {
      return null;
    }

    return $EmployeeCopyWith<$Res>(_value.employee!, (value) {
      return _then(_value.copyWith(employee: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $EmployeeEditStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Employee? employee, bool isLoading});

  @override
  $EmployeeCopyWith<$Res>? get employee;
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
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employee = freezed,
    Object? isLoading = null,
  }) {
    return _then(_$InitialImpl(
      employee: freezed == employee
          ? _value.employee
          : employee // ignore: cast_nullable_to_non_nullable
              as Employee?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl({required this.employee, required this.isLoading});

  @override
  final Employee? employee;
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'EmployeeEditState(employee: $employee, isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.employee, employee) ||
                other.employee == employee) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, employee, isLoading);

  /// Create a copy of EmployeeEditState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements EmployeeEditState {
  const factory _Initial(
      {required final Employee? employee,
      required final bool isLoading}) = _$InitialImpl;

  @override
  Employee? get employee;
  @override
  bool get isLoading;

  /// Create a copy of EmployeeEditState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
