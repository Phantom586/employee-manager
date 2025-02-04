// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EmployeeEntity _$EmployeeEntityFromJson(Map<String, dynamic> json) =>
    EmployeeEntity(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      role: json['role'] as String?,
      startDate: json['startDate'] == null
          ? null
          : DateTime.parse(json['startDate'] as String),
      endDate: json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
    );

Map<String, dynamic> _$EmployeeEntityToJson(EmployeeEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'role': instance.role,
      'startDate': instance.startDate?.toIso8601String(),
      'endDate': instance.endDate?.toIso8601String(),
    };
