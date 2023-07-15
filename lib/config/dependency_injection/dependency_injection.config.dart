// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:git_developer_search_app/core/dio/custom_interceptor.dart'
    as _i3;
import 'package:git_developer_search_app/features/user_detail/data/data_source/user_detail_data_source.dart'
    as _i12;
import 'package:git_developer_search_app/features/user_detail/data/data_source/user_detail_data_source_impl.dart'
    as _i13;
import 'package:git_developer_search_app/features/user_detail/data/repository/user_detail_repo_impl.dart'
    as _i15;
import 'package:git_developer_search_app/features/user_detail/domain/repository/user_detail_repo.dart'
    as _i14;
import 'package:git_developer_search_app/features/user_detail/domain/use_case/user_detail_user_case.dart'
    as _i16;
import 'package:git_developer_search_app/features/user_search/data/data_source/user_search_data_source.dart'
    as _i7;
import 'package:git_developer_search_app/features/user_search/data/data_source/user_serach_data_source_impl.dart'
    as _i8;
import 'package:git_developer_search_app/features/user_search/data/repository/search_user_repo_impl.dart'
    as _i10;
import 'package:git_developer_search_app/features/user_search/domain/repository/search_user_repo.dart'
    as _i9;
import 'package:git_developer_search_app/features/user_search/domain/use_case/search_user_use_case.dart'
    as _i11;
import 'package:git_developer_search_app/service/app_module.dart' as _i17;
import 'package:git_developer_search_app/service/app_service.dart' as _i5;
import 'package:git_developer_search_app/service/app_service_impl.dart' as _i6;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final appModule = _$AppModule();
    gh.lazySingleton<_i3.CustomInterceptor>(() => _i3.CustomInterceptor());
    gh.factory<String>(
      () => appModule.baseUrl,
      instanceName: 'BaseUrl',
    );
    gh.lazySingleton<_i4.Dio>(() => appModule.dio(
          gh<String>(instanceName: 'BaseUrl'),
          gh<_i3.CustomInterceptor>(),
        ));
    gh.singleton<_i5.ApiClient>(_i6.ApiClientImpl(dio: gh<_i4.Dio>()));
    gh.factory<_i7.SearchUserDataSource>(
        () => _i8.SearchUserDataSourceImpl(apiClient: gh<_i5.ApiClient>()));
    gh.factory<_i9.SearchUserRepository>(() => _i10.SearchUserRepositoryImpl(
        dataSource: gh<_i7.SearchUserDataSource>()));
    gh.factory<_i11.SearchUserUseCase>(() => _i11.SearchUserUseCase(
        searchUserRepository: gh<_i9.SearchUserRepository>()));
    gh.factory<_i12.UserDetailDataSource>(
        () => _i13.UserDetailDataSourceImpl(apiClient: gh<_i5.ApiClient>()));
    gh.factory<_i14.UserDetailRepository>(() => _i15.UserDetailRepoImpl(
        userDetailDataSource: gh<_i12.UserDetailDataSource>()));
    gh.factory<_i16.UserDetailUseCase>(() => _i16.UserDetailUseCase(
        userDetailRepository: gh<_i14.UserDetailRepository>()));
    return this;
  }
}

class _$AppModule extends _i17.AppModule {}
