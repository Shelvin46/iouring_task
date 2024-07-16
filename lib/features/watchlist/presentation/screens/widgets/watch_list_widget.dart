import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iouring_task/core/constants/color_constants.dart';
import 'package:iouring_task/features/base_screen/presentation/screens/base_screen.dart';
import 'package:iouring_task/features/search/presentation/screens/search_screen.dart';
import 'package:iouring_task/features/watchlist/presentation/blocs/watch_list/watch_list_bloc.dart';
import 'package:iouring_task/features/watchlist/presentation/screens/widgets/watch_list_item_widget.dart';
import 'package:iouring_task/features/widgets/custom_text_form_field.dart';

class WatchListWidget extends StatelessWidget {
  const WatchListWidget({
    super.key,
    required FocusNode focusNode,
  }) : _focusNode = focusNode;

  final FocusNode _focusNode;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        10.heightBox,
        // [CustomTextFormField] is a custom widget which contains a text field.
        // When the user taps on the text field, it navigates to the search screen.
        GestureDetector(
            onTap: () {
              _focusNode.requestFocus();
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SearchScreen()));
            },
            child: CustomTextFormField(focusNode: _focusNode)),
        15.heightBox,

        ///[ListView.builder] is a widget which contains a list of items.
        BlocBuilder<WatchListBloc, WatchListState>(
          builder: (context, state) {
            if (state is WatchListLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is WatchListError) {
              return Center(
                child: Text(state.failure.message),
              );
            } else if (state is WatchListLoaded) {
              return ListView.builder(
                itemCount: state.watchList.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return WatchListItemWidgets(
                    watchList: state.watchList[index],
                  );
                },
              );
            }
            return const SizedBox.shrink();
          },
        ),

        25.heightBox,
        // It  will show the total watchlist count
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "5 ",
              style: Theme.of(context).textTheme.labelLarge,
            ),
            Text(
              "/ 15 Stocks",
              style: Theme.of(context).textTheme.labelLarge,
            ),
          ],
        ),
        30.heightBox,
        // Custom button for editing the watchlist
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CustomSvgPicture(
              imagePath:
                  "assets/features/watch_list_screen/edit-svgrepo-com.svg",
              color: ColorConstants.primaryTealColor,
              width: 20,
              height: 20,
            ),
            10.widthBox,
            Text(
              "Edit Watchlist",
              style: Theme.of(context).textTheme.labelLarge,
            ),
          ],
        )
      ],
    );
  }
}
