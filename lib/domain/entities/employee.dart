import 'package:equatable/equatable.dart';

class Employee extends Equatable {
  final int id;
  final String name;
  final String role;
  final DateTime? startDate;
  final DateTime? endDate;

  const Employee(
      {required this.id,
      required this.name,
      required this.role,
      this.startDate,
      this.endDate});

  @override
  List<Object?> get props => [id];
}
