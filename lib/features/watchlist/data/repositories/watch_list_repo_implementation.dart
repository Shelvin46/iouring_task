import 'package:dartz/dartz.dart';
import 'package:iouring_task/core/failure/failure.dart';
import 'package:iouring_task/features/watchlist/data/model/watch_list_model.dart';
import 'package:iouring_task/features/watchlist/domain/repositories/watch_list_repo.dart';

///[WatchListRepoImplementation] is a class which implements [WatchListRepo].
///It is used to get the watchlist items.
///It contains the method [getWatchList].
///It returns a list of watchlist items.
///It returns a failure if there is an exception.
class WatchListRepoImplementation implements WatchListRepo {
  @override
  Future<Either<List<WatchListModel>, Failure>> getWatchList(
      String type) async {
    try {
      final List<WatchListModel> watchList =
          watchLists.where((element) => element.type == type).toList();
      return Left(watchList);
    } on Exception catch (e) {
      return Right(Failure(message: e.toString()));
    }
  }
}

///[watchLists] is a list of [WatchListModel] objects.
///It contains the properties of a watchlist item.
///It is used to display the watchlist items.
final List<WatchListModel> watchLists = [
  // Type: NIFTY
  const WatchListModel(
    title: "NIFTY",
    subTitle: "Nifty 50",
    type: "NIFTY",
    price: 15000,
    change: 100,
  ),
  const WatchListModel(
    title: "NIFTYBANK",
    subTitle: "Nifty Bank",
    type: "NIFTY",
    price: 35000,
    change: 150,
  ),
  const WatchListModel(
    title: "NIFTYIT",
    subTitle: "Nifty IT",
    type: "NIFTY",
    price: 25000,
    change: 120,
  ),
  const WatchListModel(
    title: "NIFTYFMCG",
    subTitle: "Nifty FMCG",
    type: "NIFTY",
    price: 32000,
    change: 80,
  ),
  const WatchListModel(
    title: "NIFTYPHARMA",
    subTitle: "Nifty Pharma",
    type: "NIFTY",
    price: 14000,
    change: 60,
  ),

  // Type: SENSEX
  const WatchListModel(
    title: "SENSEX",
    subTitle: "BSE SENSEX",
    type: "SENSEX",
    price: 50000,
    change: 200,
  ),
  const WatchListModel(
    title: "SENSEXIT",
    subTitle: "BSE SENSEX IT",
    type: "SENSEX",
    price: 30000,
    change: 180,
  ),
  const WatchListModel(
    title: "SENSEXFMCG",
    subTitle: "BSE SENSEX FMCG",
    type: "SENSEX",
    price: 28000,
    change: 90,
  ),
  const WatchListModel(
    title: "SENSEXPHARMA",
    subTitle: "BSE SENSEX Pharma",
    type: "SENSEX",
    price: 16000,
    change: 70,
  ),
  const WatchListModel(
    title: "SENSEXREALTY",
    subTitle: "BSE SENSEX Realty",
    type: "SENSEX",
    price: 22000,
    change: 110,
  ),

  // Type: BANKNIFTY
  const WatchListModel(
    title: "RELIANCE",
    subTitle: "Reliance Industries",
    type: "BANKNIFTY",
    price: 2100,
    change: 10,
  ),
  const WatchListModel(
    title: "TCS",
    subTitle: "Tata Consultancy Services",
    type: "BANKNIFTY",
    price: 3200,
    change: 15,
  ),
  const WatchListModel(
    title: "INFY",
    subTitle: "Infosys",
    type: "BANKNIFTY",
    price: 1500,
    change: 5,
  ),
  const WatchListModel(
    title: "HDFCBANK",
    subTitle: "HDFC Bank",
    type: "BANKNIFTY",
    price: 1400,
    change: 8,
  ),
  const WatchListModel(
    title: "ICICIBANK",
    subTitle: "ICICI Bank",
    type: "BANKNIFTY",
    price: 700,
    change: 4,
  ),
];
