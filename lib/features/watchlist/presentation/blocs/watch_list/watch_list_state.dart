part of 'watch_list_bloc.dart';

/// [WatchListState] is a sealed class which contains the method [WatchListInitial], [WatchListLoading], [WatchListLoaded].
/// This class is used to get the watchlist items.
/// [WatchListInitial] is the initial state of the watchlist.
/// [WatchListLoading] is the loading state of the watchlist.
/// [WatchListLoaded] is the loaded state of the watchlist.
/// [WatchListError] is the error state of the watchlist.
sealed class WatchListState extends Equatable {
  const WatchListState();

  @override
  List<Object> get props => [];
}

final class WatchListInitial extends WatchListState {}

final class WatchListLoading extends WatchListState {}

final class WatchListLoaded extends WatchListState {
  final List<WatchListModel> watchList;

  const WatchListLoaded({required this.watchList});

  @override
  List<Object> get props => [watchList];
}

final class WatchListError extends WatchListState {
  final Failure failure;

  const WatchListError({required this.failure});

  @override
  List<Object> get props => [failure];
}
