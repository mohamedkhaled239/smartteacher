import 'package:dio/dio.dart';
import '../../../../core/constants/api_constants.dart';
import '../../../../core/error/exceptions.dart';
import '../models/payment_model.dart';
import '../models/payments_response_model.dart';
import '../models/student_model.dart';
import '../models/students_response_model.dart';
import '../models/student_statistics_model.dart';

abstract class PaymentsRemoteDataSource {
  Future<List<PaymentModel>> getPayments();
  Future<PaymentModel> createPayment({
    required String studentId,
    required String amount,
    required String paymentType,
    required String periodStart,
    required String periodEnd,
    required String dueDate,
  });
  Future<List<StudentModel>> getStudents();
  Future<StudentStatisticsModel> getStudentStatistics();
}

class PaymentsRemoteDataSourceImpl implements PaymentsRemoteDataSource {
  final Dio dio;

  PaymentsRemoteDataSourceImpl(this.dio);

  @override
  Future<List<PaymentModel>> getPayments() async {
    try {
      final response = await dio.get(ApiConstants.paymentsEndpoint);

      if (response.statusCode == 200) {
        final paymentsResponse = PaymentsResponseModel.fromJson(response.data);
        return paymentsResponse.results;
      } else {
        throw ServerException('فشل تحميل المدفوعات');
      }
    } on DioException catch (e) {
      if (e.type == DioExceptionType.connectionTimeout ||
          e.type == DioExceptionType.receiveTimeout) {
        throw NetworkException('انتهت مهلة الاتصال');
      } else if (e.type == DioExceptionType.connectionError) {
        throw NetworkException('تحقق من اتصال الإنترنت');
      } else if (e.response?.statusCode == 401) {
        throw UnauthorizedException('يجب تسجيل الدخول أولاً');
      } else {
        throw ServerException(
          e.response?.data['message'] ?? 'حدث خطأ في الخادم',
        );
      }
    } catch (e) {
      throw ServerException('حدث خطأ غير متوقع');
    }
  }

  @override
  Future<PaymentModel> createPayment({
    required String studentId,
    required String amount,
    required String paymentType,
    required String periodStart,
    required String periodEnd,
    required String dueDate,
  }) async {
    try {
      final response = await dio.post(
        ApiConstants.paymentsEndpoint,
        data: {
          'student': studentId,
          'amount': amount,
          'payment_type': paymentType,
          'period_start': periodStart,
          'period_end': periodEnd,
          'due_date': dueDate,
        },
      );

      if (response.statusCode == 201 || response.statusCode == 200) {
        return PaymentModel.fromJson(response.data);
      } else {
        throw ServerException('فشل إنشاء المدفوع');
      }
    } on DioException catch (e) {
      if (e.type == DioExceptionType.connectionTimeout ||
          e.type == DioExceptionType.receiveTimeout) {
        throw NetworkException('انتهت مهلة الاتصال');
      } else if (e.type == DioExceptionType.connectionError) {
        throw NetworkException('تحقق من اتصال الإنترنت');
      } else if (e.response?.statusCode == 401) {
        throw UnauthorizedException('يجب تسجيل الدخول أولاً');
      } else if (e.response?.statusCode == 400) {
        throw ValidationException(
          e.response?.data['message'] ?? 'بيانات غير صالحة',
        );
      } else {
        throw ServerException(
          e.response?.data['message'] ?? 'حدث خطأ في الخادم',
        );
      }
    } catch (e) {
      throw ServerException('حدث خطأ غير متوقع');
    }
  }

  @override
  Future<List<StudentModel>> getStudents() async {
    try {
      final response = await dio.get(ApiConstants.studentsEndpoint);

      if (response.statusCode == 200) {
        final studentsResponse = StudentsResponseModel.fromJson(response.data);
        return studentsResponse.results;
      } else {
        throw ServerException('فشل تحميل الطلاب');
      }
    } on DioException catch (e) {
      if (e.type == DioExceptionType.connectionTimeout ||
          e.type == DioExceptionType.receiveTimeout) {
        throw NetworkException('انتهت مهلة الاتصال');
      } else if (e.type == DioExceptionType.connectionError) {
        throw NetworkException('تحقق من اتصال الإنترنت');
      } else if (e.response?.statusCode == 401) {
        throw UnauthorizedException('يجب تسجيل الدخول أولاً');
      } else {
        throw ServerException(
          e.response?.data['message'] ?? 'حدث خطأ في الخادم',
        );
      }
    } catch (e) {
      throw ServerException('حدث خطأ غير متوقع');
    }
  }

  @override
  Future<StudentStatisticsModel> getStudentStatistics() async {
    try {
      final response = await dio.get(ApiConstants.studentsStatisticsEndpoint);

      if (response.statusCode == 200) {
        return StudentStatisticsModel.fromJson(response.data);
      } else {
        throw ServerException('فشل تحميل الإحصائيات');
      }
    } on DioException catch (e) {
      if (e.type == DioExceptionType.connectionTimeout ||
          e.type == DioExceptionType.receiveTimeout) {
        throw NetworkException('انتهت مهلة الاتصال');
      } else if (e.type == DioExceptionType.connectionError) {
        throw NetworkException('تحقق من اتصال الإنترنت');
      } else if (e.response?.statusCode == 401) {
        throw UnauthorizedException('يجب تسجيل الدخول أولاً');
      } else {
        throw ServerException(
          e.response?.data['message'] ?? 'حدث خطأ في الخادم',
        );
      }
    } catch (e) {
      throw ServerException('حدث خطأ غير متوقع');
    }
  }
}
