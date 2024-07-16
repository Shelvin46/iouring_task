import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:iouring_task/core/constants/color_constants.dart';
import 'package:iouring_task/features/watchlist/data/model/watch_list_model.dart';

///[WatchListItemWidgets] is a stateless widget which returns a [Column] widget.
///It is a custom widget which contains the watchlist item details.
class WatchListItemWidgets extends StatelessWidget {
  const WatchListItemWidgets({
    super.key,
    required this.watchList,
  });

  final WatchListModel watchList;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    flex: 3,
                    child: Text(
                      watchList.title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      const Icon(
                        Icons.arrow_drop_up,
                        color: ColorConstants.primaryTealColor,
                      ),
                      Text(
                        "${watchList.price}",
                        style: const TextStyle(
                          color: ColorConstants.primaryTealColor,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              5.heightBox,
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    flex: 3,
                    child: Text(
                      watchList.subTitle,
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    "+${watchList.change}",
                    style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        // custom divider
        Container(
          height: 1,
          color: Colors.grey[900],
        )
      ],
    );
  }
}
