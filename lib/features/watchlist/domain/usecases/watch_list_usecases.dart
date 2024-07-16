import 'package:dartz/dartz.dart';
import 'package:iouring_task/core/failure/failure.dart';
import 'package:iouring_task/features/watchlist/data/model/watch_list_model.dart';
import 'package:iouring_task/features/watchlist/domain/repositories/watch_list_repo.dart';
import 'package:iouring_task/service_locator.dart';

/// [WatchListUseCases] is a class which contains the method [executeGetWatchList].
/// This class is responsible for getting the watchlist from the repository
class WatchListUseCases {
  Future<Either<List<WatchListModel>, Failure>> executeGetWatchList(
      String type) async {
    return locator<WatchListRepo>().getWatchList(type);
  }
}
