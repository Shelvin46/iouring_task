import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:iouring_task/core/bottom_navigation_widget/bottom_navigation_screen.dart';

///[WatchListScreenTitle] is a stateless widget which returns a [Container] widget.
///It is a custom title widget which contains the title of the screen and a pin icon.
class WatchListScreenTitle extends StatelessWidget {
  const WatchListScreenTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Watchlist",
              style: context.textTheme.displayMedium,
            ),
            const CustomSvgPicture(
              imagePath:
                  "assets/features/watch_list_screen/pin-svgrepo-com.svg",
              width: 25,
              height: 25,
            )
          ],
        ));
  }
}
