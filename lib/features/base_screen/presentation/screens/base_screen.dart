import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iouring_task/core/constants/color_constants.dart';
import 'package:iouring_task/features/watchlist/presentation/screens/watch_list_screen.dart';

///[BaseScreen] is a stateful widget which returns a [Scaffold] widget.
///It is the base screen of the app it contains BottomNavigation bar to navigate separate screens.
class BaseScreen extends StatefulWidget {
  const BaseScreen({super.key});

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: const WatchListScreen(),
        bottomNavigationBar: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  enableFeedback: false,
                  onPressed: () {},
                  icon: const RootBottomNavigationBarIcon(
                    image:
                        "assets/features/base_screen/bookmark-svgrepo-com (1).svg",
                    pageName: "Watchlist",
                    color: ColorConstants.primaryTealColor,
                  )),
              IconButton(
                  enableFeedback: false,
                  onPressed: () {},
                  icon: const RootBottomNavigationBarIcon(
                    image: "assets/features/base_screen/bag-4-svgrepo-com.svg",
                    pageName: "Orders",
                  )),
              IconButton(
                  enableFeedback: false,
                  onPressed: () {},
                  icon: const RootBottomNavigationBarIcon(
                    image:
                        "assets/features/base_screen/portfolio-svgrepo-com.svg",
                    pageName: "Portfolio",
                  )),
              IconButton(
                  enableFeedback: false,
                  onPressed: () {},
                  icon: const RootBottomNavigationBarIcon(
                    image:
                        "assets/features/base_screen/graph-bar-svgrepo-com.svg",
                    pageName: 'Movers',
                  )),
              IconButton(
                  enableFeedback: false,
                  onPressed: () {},
                  icon: const RootBottomNavigationBarIcon(
                    image:
                        "assets/features/base_screen/more-circle-svgrepo-com (1).svg",
                    pageName: "More",
                  )),
            ],
          ),
        ));
  }
}

class RootBottomNavigationBarIcon extends StatelessWidget {
  const RootBottomNavigationBarIcon({
    super.key,
    required this.image,
    required this.pageName,
    this.iconHeight = 25,
    this.iconWidth = 25,
    this.color,
  });

  final String image;
  final String pageName;
  final double iconHeight;
  final double iconWidth;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CustomSvgPicture(
          imagePath: image,
          height: iconHeight,
          width: iconWidth,
          color: color,
        ),
        2.heightBox,
        Text(
          pageName,
          style: TextStyle(
            color: color ?? Theme.of(context).colorScheme.onPrimary,
            fontSize: 12,
            fontWeight: FontWeight.bold,
            fontFamily:
                GoogleFonts.openSans(fontWeight: FontWeight.w600).fontFamily,
          ),
        )
      ],
    );
  }
}

class CustomSvgPicture extends StatelessWidget {
  const CustomSvgPicture({
    super.key,
    required this.imagePath,
    this.height = 40,
    this.width = 40,
    this.color,
  });
  final String imagePath;
  final double height;
  final double width;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      imagePath,
      height: height,
      width: width,
      colorFilter: color != null
          ? ColorFilter.mode(color!, BlendMode.srcIn)
          : ColorFilter.mode(
              Theme.of(context).colorScheme.onPrimary,
              BlendMode.srcIn,
            ),
      fit: BoxFit.scaleDown,
    );
  }
}
