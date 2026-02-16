import 'package:dio/dio.dart';
import '../../../../core/constants/api_constants.dart';
import '../../../../core/error/exceptions.dart';
import '../models/group_model.dart';
import '../models/group_details_model.dart';
import '../models/groups_response_model.dart';
import '../models/material_model.dart';
import '../models/materials_response_model.dart';

abstract class GroupsRemoteDataSource {
  Future<List<GroupModel>> getGroups();

  Future<GroupDetailsModel> getGroupDetails(String groupId);

  Future<GroupModel> createGroup({
    required String name,
    required String subject,
    required String level,
    required int capacity,
  });

  Future<void> addStudentToGroup({
    required String groupId,
    required String studentId,
  });

  Future<void> removeStudentFromGroup({
    required String groupId,
    required String studentId,
  });

  Future<List<MaterialModel>> getGroupMaterials(String groupId);

  Future<MaterialModel> createMaterial({
    required String groupId,
    required String title,
    required String materialType,
  });
}

class GroupsRemoteDataSourceImpl implements GroupsRemoteDataSource {
  final Dio dio;

  GroupsRemoteDataSourceImpl(this.dio);

  @override
  Future<List<GroupModel>> getGroups() async {
    try {
      final response = await dio.get(ApiConstants.groupsEndpoint);

      if (response.statusCode == 200) {
        final groupsResponse = GroupsResponseModel.fromJson(response.data);
        return groupsResponse.results;
      } else {
        throw ServerException('فشل تحميل المجموعات');
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
  Future<GroupDetailsModel> getGroupDetails(String groupId) async {
    try {
      final response = await dio.get(
        ApiConstants.groupDetailsEndpoint(groupId),
      );

      if (response.statusCode == 200) {
        return GroupDetailsModel.fromJson(response.data);
      } else {
        throw ServerException('فشل تحميل تفاصيل المجموعة');
      }
    } on DioException catch (e) {
      if (e.type == DioExceptionType.connectionTimeout ||
          e.type == DioExceptionType.receiveTimeout) {
        throw NetworkException('انتهت مهلة الاتصال');
      } else if (e.type == DioExceptionType.connectionError) {
        throw NetworkException('تحقق من اتصال الإنترنت');
      } else if (e.response?.statusCode == 401) {
        throw UnauthorizedException('يجب تسجيل الدخول أولاً');
      } else if (e.response?.statusCode == 404) {
        throw ServerException('المجموعة غير موجودة');
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
  Future<GroupModel> createGroup({
    required String name,
    required String subject,
    required String level,
    required int capacity,
  }) async {
    try {
      final response = await dio.post(
        ApiConstants.groupsEndpoint,
        data: {
          'name': name,
          'subject': subject,
          'level': level,
          'capacity': capacity,
        },
      );

      if (response.statusCode == 201 || response.statusCode == 200) {
        return GroupModel.fromJson(response.data);
      } else {
        throw ServerException('فشل إنشاء المجموعة');
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
  Future<void> addStudentToGroup({
    required String groupId,
    required String studentId,
  }) async {
    try {
      final response = await dio.post(
        ApiConstants.addStudentToGroupEndpoint(groupId),
        data: {'student_id': studentId},
      );

      if (response.statusCode != 200 && response.statusCode != 201) {
        throw ServerException('فشل إضافة الطالب');
      }
    } on DioException catch (e) {
      if (e.type == DioExceptionType.connectionTimeout ||
          e.type == DioExceptionType.receiveTimeout) {
        throw NetworkException('انتهت مهلة الاتصال');
      } else if (e.type == DioExceptionType.connectionError) {
        throw NetworkException('تحقق من اتصال الإنترنت');
      } else if (e.response?.statusCode == 401) {
        throw UnauthorizedException('يجب تسجيل الدخول أولاً');
      } else if (e.response?.statusCode == 404) {
        throw ServerException('الطالب أو المجموعة غير موجود');
      } else if (e.response?.statusCode == 400) {
        throw ValidationException(
          e.response?.data['message'] ?? 'لا يمكن إضافة الطالب',
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
  Future<void> removeStudentFromGroup({
    required String groupId,
    required String studentId,
  }) async {
    try {
      final response = await dio.post(
        ApiConstants.removeStudentFromGroupEndpoint(groupId),
        data: {'student_id': studentId},
      );

      if (response.statusCode != 200 && response.statusCode != 204) {
        throw ServerException('فشل إزالة الطالب');
      }
    } on DioException catch (e) {
      if (e.type == DioExceptionType.connectionTimeout ||
          e.type == DioExceptionType.receiveTimeout) {
        throw NetworkException('انتهت مهلة الاتصال');
      } else if (e.type == DioExceptionType.connectionError) {
        throw NetworkException('تحقق من اتصال الإنترنت');
      } else if (e.response?.statusCode == 401) {
        throw UnauthorizedException('يجب تسجيل الدخول أولاً');
      } else if (e.response?.statusCode == 404) {
        throw ServerException('الطالب أو المجموعة غير موجود');
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
  Future<List<MaterialModel>> getGroupMaterials(String groupId) async {
    try {
      final response = await dio.get(
        ApiConstants.groupMaterialsEndpoint,
        queryParameters: {'group': groupId},
      );

      if (response.statusCode == 200) {
        final materialsResponse = MaterialsResponseModel.fromJson(
          response.data,
        );
        return materialsResponse.results;
      } else {
        throw ServerException('فشل تحميل المواد الدراسية');
      }
    } on DioException catch (e) {
      if (e.type == DioExceptionType.connectionTimeout ||
          e.type == DioExceptionType.receiveTimeout) {
        throw NetworkException('انتهت مهلة الاتصال');
      } else if (e.type == DioExceptionType.connectionError) {
        throw NetworkException('تحقق من اتصال الإنترنت');
      } else if (e.response?.statusCode == 401) {
        throw UnauthorizedException('يجب تسجيل الدخول أولاً');
      } else if (e.response?.statusCode == 404) {
        throw ServerException('المجموعة غير موجودة');
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
  Future<MaterialModel> createMaterial({
    required String groupId,
    required String title,
    required String materialType,
  }) async {
    try {
      final response = await dio.post(
        ApiConstants.groupMaterialsEndpoint,
        data: {'group': groupId, 'title': title, 'material_type': materialType},
      );

      if (response.statusCode == 201 || response.statusCode == 200) {
        return MaterialModel.fromJson(response.data);
      } else {
        throw ServerException('فشل إنشاء المادة');
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
}
