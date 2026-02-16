import 'package:device_info_plus/device_info_plus.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'core/network/dio_client.dart';
import 'core/services/device_info_service.dart';
import 'core/services/token_storage_service.dart';
import 'features/auth/data/datasources/auth_local_data_source.dart';
import 'features/auth/data/datasources/auth_remote_data_source.dart';
import 'features/auth/data/repositories/auth_repository_impl.dart';
import 'features/auth/domain/repositories/auth_repository.dart';
import 'features/auth/domain/usecases/logout_usecase.dart';
import 'features/auth/domain/usecases/student_login_usecase.dart';
import 'features/auth/domain/usecases/teacher_login_usecase.dart';
import 'features/auth/presentation/bloc/student_login/student_login_bloc.dart';
import 'features/auth/presentation/bloc/teacher_login/teacher_login_bloc.dart';
import 'features/groups/data/datasources/groups_remote_data_source.dart';
import 'features/groups/data/repositories/groups_repository_impl.dart';
import 'features/groups/domain/repositories/groups_repository.dart';
import 'features/groups/domain/usecases/add_student_to_group_usecase.dart';
import 'features/groups/domain/usecases/create_group_usecase.dart';
import 'features/groups/domain/usecases/get_group_details_usecase.dart';
import 'features/groups/domain/usecases/get_groups_usecase.dart';
import 'features/groups/domain/usecases/remove_student_from_group_usecase.dart';
import 'features/groups/domain/usecases/get_group_materials_usecase.dart';
import 'features/groups/domain/usecases/create_material_usecase.dart';
import 'features/groups/presentation/bloc/groups_bloc.dart';
import 'features/payments/data/datasources/payments_remote_data_source.dart';
import 'features/payments/data/repositories/payments_repository_impl.dart';
import 'features/payments/domain/repositories/payments_repository.dart';
import 'features/payments/domain/usecases/create_payment_usecase.dart';
import 'features/payments/domain/usecases/get_payments_usecase.dart';
import 'features/payments/domain/usecases/get_students_usecase.dart';
import 'features/payments/domain/usecases/get_student_statistics_usecase.dart';
import 'features/payments/presentation/bloc/payments_bloc.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  // External Dependencies
  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton<SharedPreferences>(() => sharedPreferences);

  sl.registerLazySingleton<FlutterSecureStorage>(
    () => const FlutterSecureStorage(),
  );

  sl.registerLazySingleton<DeviceInfoPlugin>(() => DeviceInfoPlugin());

  // Core Services
  sl.registerLazySingleton<TokenStorageService>(
    () => TokenStorageService(
      sl<FlutterSecureStorage>(),
      sl<SharedPreferences>(),
    ),
  );

  sl.registerLazySingleton<DeviceInfoService>(
    () => DeviceInfoService(sl<DeviceInfoPlugin>()),
  );

  sl.registerLazySingleton<DioClient>(
    () => DioClient(sl<TokenStorageService>()),
  );

  sl.registerLazySingleton<Dio>(() => sl<DioClient>().dio);

  // Data Sources
  sl.registerLazySingleton<AuthRemoteDataSource>(
    () => AuthRemoteDataSourceImpl(sl<Dio>()),
  );

  sl.registerLazySingleton<AuthLocalDataSource>(
    () => AuthLocalDataSourceImpl(sl<TokenStorageService>()),
  );

  sl.registerLazySingleton<GroupsRemoteDataSource>(
    () => GroupsRemoteDataSourceImpl(sl<Dio>()),
  );

  sl.registerLazySingleton<PaymentsRemoteDataSource>(
    () => PaymentsRemoteDataSourceImpl(sl<Dio>()),
  );

  // Repositories
  sl.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(
      remoteDataSource: sl<AuthRemoteDataSource>(),
      localDataSource: sl<AuthLocalDataSource>(),
    ),
  );

  sl.registerLazySingleton<GroupsRepository>(
    () => GroupsRepositoryImpl(remoteDataSource: sl<GroupsRemoteDataSource>()),
  );

  sl.registerLazySingleton<PaymentsRepository>(
    () => PaymentsRepositoryImpl(
      remoteDataSource: sl<PaymentsRemoteDataSource>(),
    ),
  );

  // Use Cases
  sl.registerLazySingleton<TeacherLoginUseCase>(
    () => TeacherLoginUseCase(sl<AuthRepository>()),
  );

  sl.registerLazySingleton<StudentLoginUseCase>(
    () => StudentLoginUseCase(sl<AuthRepository>()),
  );

  sl.registerLazySingleton<LogoutUseCase>(
    () => LogoutUseCase(sl<AuthRepository>()),
  );

  sl.registerLazySingleton<GetGroupsUseCase>(
    () => GetGroupsUseCase(sl<GroupsRepository>()),
  );

  sl.registerLazySingleton<GetGroupDetailsUseCase>(
    () => GetGroupDetailsUseCase(sl<GroupsRepository>()),
  );

  sl.registerLazySingleton<CreateGroupUseCase>(
    () => CreateGroupUseCase(sl<GroupsRepository>()),
  );

  sl.registerLazySingleton<AddStudentToGroupUseCase>(
    () => AddStudentToGroupUseCase(sl<GroupsRepository>()),
  );

  sl.registerLazySingleton<RemoveStudentFromGroupUseCase>(
    () => RemoveStudentFromGroupUseCase(sl<GroupsRepository>()),
  );

  sl.registerLazySingleton<GetGroupMaterialsUseCase>(
    () => GetGroupMaterialsUseCase(sl<GroupsRepository>()),
  );

  sl.registerLazySingleton<CreateMaterialUseCase>(
    () => CreateMaterialUseCase(sl<GroupsRepository>()),
  );

  sl.registerLazySingleton<GetPaymentsUseCase>(
    () => GetPaymentsUseCase(sl<PaymentsRepository>()),
  );

  sl.registerLazySingleton<CreatePaymentUseCase>(
    () => CreatePaymentUseCase(sl<PaymentsRepository>()),
  );

  sl.registerLazySingleton<GetStudentsUseCase>(
    () => GetStudentsUseCase(sl<PaymentsRepository>()),
  );

  sl.registerLazySingleton<GetStudentStatisticsUseCase>(
    () => GetStudentStatisticsUseCase(sl<PaymentsRepository>()),
  );

  // BLoCs
  sl.registerFactory<TeacherLoginBloc>(
    () => TeacherLoginBloc(teacherLoginUseCase: sl<TeacherLoginUseCase>()),
  );

  sl.registerFactory<StudentLoginBloc>(
    () => StudentLoginBloc(studentLoginUseCase: sl<StudentLoginUseCase>()),
  );

  sl.registerFactory<GroupsBloc>(
    () => GroupsBloc(
      getGroupsUseCase: sl<GetGroupsUseCase>(),
      getGroupDetailsUseCase: sl<GetGroupDetailsUseCase>(),
      createGroupUseCase: sl<CreateGroupUseCase>(),
      addStudentToGroupUseCase: sl<AddStudentToGroupUseCase>(),
      removeStudentFromGroupUseCase: sl<RemoveStudentFromGroupUseCase>(),
      getGroupMaterialsUseCase: sl<GetGroupMaterialsUseCase>(),
      createMaterialUseCase: sl<CreateMaterialUseCase>(),
    ),
  );

  sl.registerFactory<PaymentsBloc>(
    () => PaymentsBloc(
      getPaymentsUseCase: sl<GetPaymentsUseCase>(),
      createPaymentUseCase: sl<CreatePaymentUseCase>(),
      getStudentsUseCase: sl<GetStudentsUseCase>(),
      getStudentStatisticsUseCase: sl<GetStudentStatisticsUseCase>(),
    ),
  );
}
