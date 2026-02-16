import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../domain/usecases/teacher_login_usecase.dart';
import 'teacher_login_event.dart';
import 'teacher_login_state.dart';

class TeacherLoginBloc extends Bloc<TeacherLoginEvent, TeacherLoginState> {
  final TeacherLoginUseCase teacherLoginUseCase;

  TeacherLoginBloc({required this.teacherLoginUseCase})
    : super(const TeacherLoginInitial()) {
    on<TeacherLoginSubmitted>(_onTeacherLoginSubmitted);
  }

  Future<void> _onTeacherLoginSubmitted(
    TeacherLoginSubmitted event,
    Emitter<TeacherLoginState> emit,
  ) async {
    emit(const TeacherLoginLoading());

    final result = await teacherLoginUseCase(
      pin: event.pin,
      deviceInfo: event.deviceInfo,
    );

    result.fold(
      (failure) => emit(TeacherLoginError(failure.message)),
      (response) => emit(TeacherLoginSuccess(response)),
    );
  }
}
