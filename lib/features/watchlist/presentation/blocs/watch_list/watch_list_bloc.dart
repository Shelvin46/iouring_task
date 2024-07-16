import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iouring_task/core/failure/failure.dart';
import 'package:iouring_task/features/watchlist/data/model/watch_list_model.dart';
import 'package:iouring_task/features/watchlist/domain/usecases/watch_list_usecases.dart';
import 'package:iouring_task/service_locator.dart';

part 'watch_list_event.dart';
part 'watch_list_state.dart';

/// [WatchListBloc] is a class which extends the [Bloc] and contains the method [WatchListBloc].
/// This class is used to get the watchlist items.

class WatchListBloc extends Bloc<WatchListEvent, WatchListState> {
  WatchListBloc() : super(WatchListInitial()) {
    on<GetWatchListEvent>((event, emit) async {
      // Emit the loading state
      emit(WatchListLoading());
      // Get the watchlist items
      final result = await locator<WatchListUseCases>().executeGetWatchList(
        event.type,
      );

      // Check if the result is successful
      result.fold(
        (watchList) {
          // Emit the loaded state
          emit(WatchListLoaded(watchList: watchList));
        },
        (failure) {
          // Emit the error state
          emit(WatchListError(failure: failure));
        },
      );
    });
  }
}
