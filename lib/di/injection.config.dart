// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:http/http.dart' as _i4;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i9;

import '../app/page/home/presentation/blocs/home/home_bloc.dart' as _i7;
import '../app/page/weather/bloc/weather_bloc.dart' as _i15;
import '../app/page/weather/data/data_sources/weather_daily_data_source.dart'
    as _i11;
import '../app/page/weather/data/responsitories/weather_repository_impl.dart'
    as _i13;
import '../app/page/weather/data/services/weather_service.dart' as _i10;
import '../app/page/weather/domain/repositories/weather_repository.dart'
    as _i12;
import '../app/page/weather/domain/use_case/weather_use_case.dart' as _i14;
import '../core/network/data_connection_checker.dart' as _i5;
import '../core/network/network_info.dart' as _i8;
import '../core/network/network_module.dart' as _i17;
import '../core/repositories/app_repository.dart' as _i3;
import 'app_module.dart' as _i16; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final appModule = _$AppModule();
  final networkModule = _$NetworkModule();
  gh.singleton<_i3.AppRepository>(_i3.AppRepository());
  gh.singleton<_i4.Client>(appModule.httpClient);
  gh.factory<_i5.DataConnectionChecker>(
      () => networkModule.dataConnectionChecker);
  gh.factory<_i6.Dio>(
    () => networkModule.dio,
    instanceName: 'dioWithoutToken',
  );
  gh.factory<_i7.HomeBloc>(() => _i7.HomeBloc());
  gh.singleton<_i8.NetworkInfo>(_i8.NetworkInfoImpl(
      dataConnectionChecker: get<_i5.DataConnectionChecker>()));
  await gh.factoryAsync<_i9.SharedPreferences>(
    () => appModule.prefs,
    preResolve: true,
  );
  gh.factory<_i6.Dio>(
    () => networkModule.dioWithToken(get<_i9.SharedPreferences>()),
    instanceName: 'dioWithToken',
  );
  gh.factory<_i6.Dio>(
    () => networkModule.dioWithRememberToken(get<_i9.SharedPreferences>()),
    instanceName: 'dioWithRememberToken',
  );
  gh.factory<_i10.WeatherService>(
      () => _i10.WeatherService(get<_i6.Dio>(instanceName: 'dioWithToken')));
  gh.factory<_i11.WeatherDailyDataSource>(
      () => _i11.WeatherDailyDataSourceImpl(get<_i10.WeatherService>()));
  gh.factory<_i12.WeatherRepository>(() => _i13.WeatherRepositoryImpl(
        get<_i8.NetworkInfo>(),
        get<_i11.WeatherDailyDataSource>(),
      ));
  gh.factory<_i14.WeatherUseCase>(
      () => _i14.WeatherUseCase(get<_i12.WeatherRepository>()));
  gh.factory<_i15.WeatherBloc>(
      () => _i15.WeatherBloc(get<_i14.WeatherUseCase>()));
  return get;
}

class _$AppModule extends _i16.AppModule {}

class _$NetworkModule extends _i17.NetworkModule {}
