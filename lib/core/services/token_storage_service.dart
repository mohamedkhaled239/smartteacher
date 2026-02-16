import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../constants/api_constants.dart';

class TokenStorageService {
  final FlutterSecureStorage _secureStorage;
  final SharedPreferences _prefs;

  TokenStorageService(this._secureStorage, this._prefs);

  // Access Token
  Future<void> saveAccessToken(String token) async {
    await _secureStorage.write(key: ApiConstants.accessTokenKey, value: token);
  }

  Future<String?> getAccessToken() async {
    return await _secureStorage.read(key: ApiConstants.accessTokenKey);
  }

  // Refresh Token
  Future<void> saveRefreshToken(String token) async {
    await _secureStorage.write(key: ApiConstants.refreshTokenKey, value: token);
  }

  Future<String?> getRefreshToken() async {
    return await _secureStorage.read(key: ApiConstants.refreshTokenKey);
  }

  // Session Token
  Future<void> saveSessionToken(String token) async {
    await _prefs.setString(ApiConstants.sessionTokenKey, token);
  }

  Future<String?> getSessionToken() async {
    return _prefs.getString(ApiConstants.sessionTokenKey);
  }

  // User Type
  Future<void> saveUserType(String userType) async {
    await _prefs.setString(ApiConstants.userTypeKey, userType);
  }

  Future<String?> getUserType() async {
    return _prefs.getString(ApiConstants.userTypeKey);
  }

  // User Data
  Future<void> saveUserData(String userData) async {
    await _prefs.setString(ApiConstants.userDataKey, userData);
  }

  Future<String?> getUserData() async {
    return _prefs.getString(ApiConstants.userDataKey);
  }

  // Check if user is logged in
  Future<bool> isLoggedIn() async {
    final token = await getAccessToken();
    return token != null && token.isNotEmpty;
  }

  // Clear all tokens and user data
  Future<void> clearAll() async {
    await _secureStorage.deleteAll();
    await _prefs.clear();
  }
}
