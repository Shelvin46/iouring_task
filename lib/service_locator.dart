import 'package:get_it/get_it.dart';
import 'package:iouring_task/features/watchlist/data/repositories/watch_list_repo_implementation.dart';
import 'package:iouring_task/features/watchlist/domain/repositories/watch_list_repo.dart';
import 'package:iouring_task/features/watchlist/domain/usecases/watch_list_usecases.dart';

final locator = GetIt.instance;

///[ServiceLocator] is a class that is responsible for registering the dependencies into the get_it instance
///It contains the method [setupLocator].
///It is used to register the dependencies.
///It is used to setup the locator.
///It is used to register the watchlist usecases and repositories.
class ServiceLocator {
  static void setupLocator() {
    locator.registerLazySingleton(() => WatchListUseCases());
    locator.registerSingleton<WatchListRepo>(WatchListRepoImplementation());
  }
}
// Dependency injections is an software designing pattern it deals with creation and management of dependencies into a class or module from outside
// for doing this approach on flutter application we can use get_it package we can create a instance from the get_it package and register the dependencies into it
/// what are the classes we registered on this get_it instance we can use those objects in anywhere in the application
/// we can register the classes as singleton, factory, lazy singleton
/// it will essential for making the code more testable and maintainable also for loose coupling