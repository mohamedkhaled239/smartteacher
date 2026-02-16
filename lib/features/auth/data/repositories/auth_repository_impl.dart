import 'package:dartz/dartz.dart';
import 'package:smartteacher/features/auth/data/models/student_login_response_model.dart';
import 'package:smartteacher/features/auth/data/models/teacher_login_response_model.dart';
import '../../../../core/error/exceptions.dart';
import '../../../../core/error/failures.dart';
import '../../domain/entities/teacher_login_response.dart';
import '../../domain/entities/student_login_response.dart';
import '../../domain/repositories/auth_repository.dart';
import '../datasources/auth_remote_data_source.dart';
import '../datasources/auth_local_data_source.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;
  final AuthLocalDataSource localDataSource;

  AuthRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
  });

  @override
  Future<Either<Failure, TeacherLoginResponse>> teacherLogin({
    required String pin,
    required Map<String, dynamic> deviceInfo,
  }) async {
    try {
      final result = await remoteDataSource.teacherLogin(
        pin: pin,
        deviceInfo: deviceInfo,
      );

      // Cache auth data
      await localDataSource.cacheAuthData(
        accessToken: result.access,
        refreshToken: result.refresh,
        sessionToken: result.sessionToken,
        userType: 'teacher',
        userData: {
          'id': result.user.id,
          'username': result.user.username,
          'email': result.user.email,
        },
      );

      return Right(result.toEntity());
    } on NetworkException catch (e) {
      return Left(NetworkFailure(e.message));
    } on UnauthorizedException catch (e) {
      return Left(UnauthorizedFailure(e.message));
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    } catch (e) {
      return Left(ServerFailure('حدث خطأ غير متوقع'));
    }
  }

  @override
  Future<Either<Failure, StudentLoginResponse>> studentLogin({
    required String studentCode,
  }) async {
    try {
      final result = await remoteDataSource.studentLogin(
        studentCode: studentCode,
      );

      // Cache auth data
      await localDataSource.cacheAuthData(
        accessToken: result.access,
        refreshToken: result.refresh,
        userType: 'student',
        userData: {
          'id': result.user.id,
          'username': result.user.username,
          'email': result.user.email,
          'student_code': result.user.studentCode,
        },
      );

      return Right(result.toEntity());
    } on NetworkException catch (e) {
      return Left(NetworkFailure(e.message));
    } on UnauthorizedException catch (e) {
      return Left(UnauthorizedFailure(e.message));
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    } catch (e) {
      return Left(ServerFailure('حدث خطأ غير متوقع'));
    }
  }

  @override
  Future<Either<Failure, void>> logout() async {
    try {
      await localDataSource.clearAuthData();
      return const Right(null);
    } on CacheException catch (e) {
      return Left(CacheFailure(e.message));
    } catch (e) {
      return Left(CacheFailure('فشل تسجيل الخروج'));
    }
  }

  @override
  Future<bool> isLoggedIn() async {
    return await localDataSource.isLoggedIn();
  }

  @override
  Future<String?> getUserType() async {
    return await localDataSource.getUserType();
  }
}
