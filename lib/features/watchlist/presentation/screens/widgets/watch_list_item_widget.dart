import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:iouring_task/core/constants/color_constants.dart';

///[WatchListItemWidgets] is a stateless widget which returns a [Column] widget.
///It is a custom widget which contains the watchlist item details.
class WatchListItemWidgets extends StatelessWidget {
  const WatchListItemWidgets({
    super.key,
  });

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
                      "GOLD 26JUL 59500 CE",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ),
                  const Spacer(),
                  const Row(
                    children: [
                      Icon(
                        Icons.arrow_drop_up,
                        color: ColorConstants.primaryTealColor,
                      ),
                      Text(
                        "298.50",
                        style: TextStyle(
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
                      "MCX",
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    "+1.05 (0.07%)",
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
