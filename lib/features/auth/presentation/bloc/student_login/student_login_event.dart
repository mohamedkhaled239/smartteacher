import 'package:equatable/equatable.dart';

abstract class StudentLoginEvent extends Equatable {
  const StudentLoginEvent();

  @override
  List<Object> get props => [];
}

class StudentLoginSubmitted extends StudentLoginEvent {
  final String studentCode;

  const StudentLoginSubmitted({required this.studentCode});

  @override
  List<Object> get props => [studentCode];
}
