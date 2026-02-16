import 'dart:developer';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/usecases/create_payment_usecase.dart';
import '../../domain/usecases/get_payments_usecase.dart';
import '../../domain/usecases/get_students_usecase.dart';
import '../../domain/usecases/get_student_statistics_usecase.dart';
import 'payments_event.dart';
import 'payments_state.dart';

class PaymentsBloc extends Bloc<PaymentsEvent, PaymentsState> {
  final GetPaymentsUseCase getPaymentsUseCase;
  final CreatePaymentUseCase createPaymentUseCase;
  final GetStudentsUseCase getStudentsUseCase;
  final GetStudentStatisticsUseCase getStudentStatisticsUseCase;

  PaymentsBloc({
    required this.getPaymentsUseCase,
    required this.createPaymentUseCase,
    required this.getStudentsUseCase,
    required this.getStudentStatisticsUseCase,
  }) : super(const PaymentsState()) {
    on<LoadPaymentsEvent>(_onLoadPayments);
    on<LoadStudentsEvent>(_onLoadStudents);
    on<LoadStudentStatisticsEvent>(_onLoadStatistics);
    on<CreatePaymentEvent>(_onCreatePayment);
  }

  Future<void> _onLoadPayments(
    LoadPaymentsEvent event,
    Emitter<PaymentsState> emit,
  ) async {
    emit(state.copyWith(status: PaymentsStatus.loading));

    final result = await getPaymentsUseCase();

    result.fold(
      (failure) {
        log('Failed to load payments: ${failure.message}');
        emit(
          state.copyWith(
            status: PaymentsStatus.failure,
            errorMessage: failure.message,
          ),
        );
      },
      (payments) {
        log('Payments loaded successfully: ${payments.length} payments');
        emit(
          state.copyWith(status: PaymentsStatus.success, payments: payments),
        );
      },
    );
  }

  Future<void> _onLoadStudents(
    LoadStudentsEvent event,
    Emitter<PaymentsState> emit,
  ) async {
    emit(state.copyWith(studentsStatus: PaymentsStatus.loading));

    final result = await getStudentsUseCase();

    result.fold(
      (failure) {
        log('Failed to load students: ${failure.message}');
        emit(
          state.copyWith(
            studentsStatus: PaymentsStatus.failure,
            errorMessage: failure.message,
          ),
        );
      },
      (students) {
        log('Students loaded successfully: ${students.length} students');
        emit(
          state.copyWith(
            studentsStatus: PaymentsStatus.success,
            students: students,
          ),
        );
      },
    );
  }

  Future<void> _onLoadStatistics(
    LoadStudentStatisticsEvent event,
    Emitter<PaymentsState> emit,
  ) async {
    emit(state.copyWith(statisticsStatus: PaymentsStatus.loading));

    final result = await getStudentStatisticsUseCase();

    result.fold(
      (failure) {
        log('Failed to load statistics: ${failure.message}');
        emit(
          state.copyWith(
            statisticsStatus: PaymentsStatus.failure,
            errorMessage: failure.message,
          ),
        );
      },
      (statistics) {
        log('Statistics loaded successfully');
        emit(
          state.copyWith(
            statisticsStatus: PaymentsStatus.success,
            statistics: statistics,
          ),
        );
      },
    );
  }

  Future<void> _onCreatePayment(
    CreatePaymentEvent event,
    Emitter<PaymentsState> emit,
  ) async {
    emit(state.copyWith(operationStatus: PaymentsStatus.loading));

    final result = await createPaymentUseCase(
      studentId: event.studentId,
      amount: event.amount,
      paymentType: event.paymentType,
      periodStart: event.periodStart,
      periodEnd: event.periodEnd,
      dueDate: event.dueDate,
    );

    result.fold(
      (failure) {
        log('Failed to create payment: ${failure.message}');
        emit(
          state.copyWith(
            operationStatus: PaymentsStatus.failure,
            operationMessage: failure.message,
          ),
        );
      },
      (payment) {
        log('Payment created successfully');
        emit(
          state.copyWith(
            operationStatus: PaymentsStatus.success,
            operationMessage: 'تم إنشاء المدفوع بنجاح',
            payments: [payment, ...state.payments],
          ),
        );
      },
    );
  }
}
