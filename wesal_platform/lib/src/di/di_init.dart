import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:wesal/src/di/di_init.config.dart';

final diContainer = GetIt.instance;

@InjectableInit()
void configureDependencies() => diContainer.init();
