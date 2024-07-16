part of 'watch_list_bloc.dart';

/// [WatchListEvent] is a sealed class which contains the method [GetWatchListEvent].
/// This class is used to get the watchlist items.
sealed class WatchListEvent extends Equatable {
  const WatchListEvent();

  @override
  List<Object> get props => [];
}

class GetWatchListEvent extends WatchListEvent {
  final String type;

  const GetWatchListEvent({required this.type});

  @override
  List<Object> get props => [type];
}
