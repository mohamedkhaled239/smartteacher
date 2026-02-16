import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../domain/usecases/student_login_usecase.dart';
import 'student_login_event.dart';
import 'student_login_state.dart';

class StudentLoginBloc extends Bloc<StudentLoginEvent, StudentLoginState> {
  final StudentLoginUseCase studentLoginUseCase;

  StudentLoginBloc({required this.studentLoginUseCase})
    : super(const StudentLoginInitial()) {
    on<StudentLoginSubmitted>(_onStudentLoginSubmitted);
  }

  Future<void> _onStudentLoginSubmitted(
    StudentLoginSubmitted event,
    Emitter<StudentLoginState> emit,
  ) async {
    emit(const StudentLoginLoading());

    final result = await studentLoginUseCase(studentCode: event.studentCode);

    result.fold(
      (failure) => emit(StudentLoginError(failure.message)),
      (response) => emit(StudentLoginSuccess(response)),
    );
  }
}
