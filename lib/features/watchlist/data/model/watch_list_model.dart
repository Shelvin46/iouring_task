import 'package:equatable/equatable.dart';

///[WatchListModel] is a model class which extends [Equatable].
///It contains the properties of a watchlist item.
class WatchListModel extends Equatable {
  final String title;
  final String subTitle;
  final String type;
  final double price;
  final double change;

  const WatchListModel({
    required this.title,
    required this.subTitle,
    required this.type,
    required this.price,
    required this.change,
  });

  @override
  List<Object?> get props => [title, subTitle, type, price, change];
}
