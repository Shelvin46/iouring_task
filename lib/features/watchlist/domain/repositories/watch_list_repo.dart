import 'package:dartz/dartz.dart';
import 'package:iouring_task/core/failure/failure.dart';
import 'package:iouring_task/features/watchlist/data/model/watch_list_model.dart';

/// [WatchListRepo] is an abstract class which contains the method [getWatchList].
/// It is used to get the watchlist items.
abstract class WatchListRepo {
  Future<Either<List<WatchListModel>, Failure>> getWatchList(String type);
}
