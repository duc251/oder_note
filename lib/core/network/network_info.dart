import 'package:injectable/injectable.dart';
import 'package:oder_note/core/network/data_connection_checker.dart';

abstract class NetworkInfo {
  Future<bool> get isConnected;
}


@Singleton(as: NetworkInfo)
class NetworkInfoImpl implements NetworkInfo {
  final DataConnectionChecker dataConnectionChecker;

  NetworkInfoImpl({required this.dataConnectionChecker});

  @override
  Future<bool> get isConnected => dataConnectionChecker.hasConnection;
}