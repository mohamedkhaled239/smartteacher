import 'dart:convert';
import '../../../../core/error/exceptions.dart';
import '../../../../core/services/token_storage_service.dart';

abstract class AuthLocalDataSource {
  Future<void> cacheAuthData({
    required String accessToken,
    required String refreshToken,
    String? sessionToken,
    required String userType,
    required Map<String, dynamic> userData,
  });

  Future<void> clearAuthData();

  Future<bool> isLoggedIn();

  Future<String?> getUserType();
}

class AuthLocalDataSourceImpl implements AuthLocalDataSource {
  final TokenStorageService tokenStorageService;

  AuthLocalDataSourceImpl(this.tokenStorageService);

  @override
  Future<void> cacheAuthData({
    required String accessToken,
    required String refreshToken,
    String? sessionToken,
    required String userType,
    required Map<String, dynamic> userData,
  }) async {
    try {
      await tokenStorageService.saveAccessToken(accessToken);
      await tokenStorageService.saveRefreshToken(refreshToken);

      if (sessionToken != null) {
        await tokenStorageService.saveSessionToken(sessionToken);
      }

      await tokenStorageService.saveUserType(userType);
      await tokenStorageService.saveUserData(json.encode(userData));
    } catch (e) {
      throw CacheException('فشل حفظ بيانات المستخدم');
    }
  }

  @override
  Future<void> clearAuthData() async {
    try {
      await tokenStorageService.clearAll();
    } catch (e) {
      throw CacheException('فشل مسح بيانات المستخدم');
    }
  }

  @override
  Future<bool> isLoggedIn() async {
    try {
      return await tokenStorageService.isLoggedIn();
    } catch (e) {
      return false;
    }
  }

  @override
  Future<String?> getUserType() async {
    try {
      return await tokenStorageService.getUserType();
    } catch (e) {
      return null;
    }
  }
}
