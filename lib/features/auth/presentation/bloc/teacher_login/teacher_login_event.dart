import 'package:equatable/equatable.dart';

abstract class TeacherLoginEvent extends Equatable {
  const TeacherLoginEvent();

  @override
  List<Object> get props => [];
}

class TeacherLoginSubmitted extends TeacherLoginEvent {
  final String pin;
  final Map<String, dynamic> deviceInfo;

  const TeacherLoginSubmitted({required this.pin, required this.deviceInfo});

  @override
  List<Object> get props => [pin, deviceInfo];
}
