import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iouring_task/core/constants/color_constants.dart';
import 'package:iouring_task/core/bottom_navigation_widget/bottom_navigation_screen.dart';
import 'package:iouring_task/features/watchlist/presentation/blocs/watch_list/watch_list_bloc.dart';
import 'package:iouring_task/features/watchlist/presentation/screens/widgets/watch_list_screen_title.dart';
import 'package:iouring_task/features/watchlist/presentation/screens/widgets/watch_list_widget.dart';

///[WatchListScreen] is a stateful widget which returns a [Scaffold] widget.
///It is the screen which contains the watchlist of the user.
///It contains a search bar and a list of watchlist items.
///It also contains a tab bar to switch between different watchlists.
///It also contains a button to navigate to the search screen.
///
class WatchListScreen extends StatefulWidget {
  const WatchListScreen({super.key});

  @override
  State<WatchListScreen> createState() => _WatchListScreenState();
}

class _WatchListScreenState extends State<WatchListScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late FocusNode _focusNode;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    _focusNode = FocusNode();

    context.read<WatchListBloc>().add(const GetWatchListEvent(type: "NIFTY"));

    _tabController.addListener(() {
      if (_tabController.index == 0) {
        context
            .read<WatchListBloc>()
            .add(const GetWatchListEvent(type: "NIFTY"));
      } else if (_tabController.index == 1) {
        context
            .read<WatchListBloc>()
            .add(const GetWatchListEvent(type: "BANKNIFTY"));
      } else if (_tabController.index == 2) {
        context
            .read<WatchListBloc>()
            .add(const GetWatchListEvent(type: "SENSEX"));
      }
    });

    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          const WatchListScreenTitle(),
          10.heightBox,
          Stack(
            alignment: Alignment.center,
            children: [
              ///[TabBar] is a widget which contains tabs.
              ///It is used to switch between different tabs.
              Align(
                alignment: Alignment.centerLeft,
                child: TabBar(
                  labelStyle: Theme.of(context).textTheme.labelSmall,
                  controller: _tabController,
                  dividerColor: Colors.grey[500],
                  tabAlignment: TabAlignment.start,
                  labelPadding: const EdgeInsets.only(right: 10, left: 10),
                  isScrollable: true,
                  dividerHeight: 0.1,
                  indicatorWeight: 0.1,
                  tabs: const [
                    Tab(
                      text: "NIFTY",
                    ),
                    Tab(
                      text: "BANKNIFTY",
                    ),
                    Tab(
                      text: "SENSEX",
                    ),
                  ],
                ),
              ),
              const Align(
                alignment: Alignment.centerRight,
                child: CustomSvgPicture(
                  imagePath:
                      "assets/features/watch_list_screen/more-app-svgrepo-com (1).svg",
                  width: 20,
                  height: 20,
                  color: ColorConstants.primaryTealColor,
                ),
              ).paddingOnly(right: 10),
            ],
          ),

          ///[TabBarView] is a widget which contains the views of the tabs.
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                WatchListWidget(focusNode: _focusNode),
                WatchListWidget(focusNode: _focusNode),
                WatchListWidget(focusNode: _focusNode),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
