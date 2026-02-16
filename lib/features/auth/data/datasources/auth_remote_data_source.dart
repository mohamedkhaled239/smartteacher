import 'package:dio/dio.dart';
import '../../../../core/constants/api_constants.dart';
import '../../../../core/error/exceptions.dart';
import '../models/teacher_login_response_model.dart';
import '../models/student_login_response_model.dart';

abstract class AuthRemoteDataSource {
  Future<TeacherLoginResponseModel> teacherLogin({
    required String pin,
    required Map<String, dynamic> deviceInfo,
  });

  Future<StudentLoginResponseModel> studentLogin({required String studentCode});
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final Dio dio;

  AuthRemoteDataSourceImpl(this.dio);

  @override
  Future<TeacherLoginResponseModel> teacherLogin({
    required String pin,
    required Map<String, dynamic> deviceInfo,
  }) async {
    try {
      final response = await dio.post(
        ApiConstants.teacherLoginEndpoint,
        data: {'pin': pin, 'device_info': deviceInfo},
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        return TeacherLoginResponseModel.fromJson(response.data);
      } else {
        throw ServerException('فشل تسجيل الدخول');
      }
    } on DioException catch (e) {
      if (e.type == DioExceptionType.connectionTimeout ||
          e.type == DioExceptionType.receiveTimeout) {
        throw NetworkException('انتهت مهلة الاتصال');
      } else if (e.type == DioExceptionType.connectionError) {
        throw NetworkException('تحقق من اتصال الإنترنت');
      } else if (e.response?.statusCode == 401) {
        throw UnauthorizedException('رمز PIN غير صحيح');
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
  Future<StudentLoginResponseModel> studentLogin({
    required String studentCode,
  }) async {
    try {
      final response = await dio.post(
        ApiConstants.studentLoginEndpoint,
        data: {'student_code': studentCode},
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        return StudentLoginResponseModel.fromJson(response.data);
      } else {
        throw ServerException('فشل تسجيل الدخول');
      }
    } on DioException catch (e) {
      if (e.type == DioExceptionType.connectionTimeout ||
          e.type == DioExceptionType.receiveTimeout) {
        throw NetworkException('انتهت مهلة الاتصال');
      } else if (e.type == DioExceptionType.connectionError) {
        throw NetworkException('تحقق من اتصال الإنترنت');
      } else if (e.response?.statusCode == 401) {
        throw UnauthorizedException('كود الطالب غير صحيح');
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
