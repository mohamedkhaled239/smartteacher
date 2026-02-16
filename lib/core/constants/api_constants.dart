class ApiConstants {
  ApiConstants._();

  // TODO: Replace with your actual base URL
  // Example: static const String baseUrl = 'https://api.example.com';
  static const String baseUrl = 'https://master-productio.up.railway.app/api';

  // Auth Endpoints
  static const String teacherLoginEndpoint = '/auth/teacher-login/';
  static const String studentLoginEndpoint = '/auth/student-login/';

  // Groups Endpoints
  static const String groupsEndpoint = '/groups/';
  static String groupDetailsEndpoint(String groupId) => '/groups/$groupId/';
  static String addStudentToGroupEndpoint(String groupId) =>
      '/groups/$groupId/add_student/';
  static String removeStudentFromGroupEndpoint(String groupId) =>
      '/groups/$groupId/remove_student/';
  static const String groupMaterialsEndpoint = '/groups/materials/';

  // Payments Endpoints
  static const String paymentsEndpoint = '/payments/';

  // Students Endpoints
  static const String studentsEndpoint = '/students/';
  static const String studentsStatisticsEndpoint = '/students/statistics/';

  // Timeout
  static const Duration connectionTimeout = Duration(seconds: 30);
  static const Duration receiveTimeout = Duration(seconds: 30);

  // Storage Keys
  static const String accessTokenKey = 'access_token';
  static const String refreshTokenKey = 'refresh_token';
  static const String sessionTokenKey = 'session_token';
  static const String userTypeKey = 'user_type';
  static const String userDataKey = 'user_data';
}
