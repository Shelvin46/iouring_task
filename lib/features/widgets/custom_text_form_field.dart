import 'dart:io';

import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:iouring_task/core/constants/color_constants.dart';
import 'package:iouring_task/features/base_screen/presentation/screens/base_screen.dart';

///[CustomTextFormField] is a stateless widget which returns a [Container] widget.
///It is a custom text form field which contains a search icon, a text form field and two icons.
///It is used to search and add items.
class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required FocusNode focusNode,
    this.readOnly = true,
    this.onTap,
  }) : _focusNode = focusNode;

  final FocusNode _focusNode;
  final bool readOnly;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        color: Colors.grey[900],
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        children: [
          const CustomSvgPicture(
              imagePath:
                  "assets/features/watch_list_screen/search-alt-svgrepo-com.svg",
              height: 24,
              width: 24),
          15.widthBox,
          Expanded(
            child: TextFormField(
              onTap: onTap,
              onTapOutside: (event) {
                if (Platform.isIOS) {
                  _focusNode.unfocus();
                }
              },
              readOnly: readOnly,
              autofocus: true,
              focusNode: _focusNode,
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                filled: true,
                isCollapsed: true,
                fillColor: Colors.grey[900],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide.none,
                ),
                hintText: "Search & Add",
                hintStyle: TextStyle(color: Colors.grey[500], fontSize: 16),
              ),
            ),
          ),
          const CustomSvgPicture(
            imagePath:
                "assets/features/watch_list_screen/nine-squares-svgrepo-com.svg",
            height: 18,
            width: 18,
            color: ColorConstants.primaryTealColor,
          ),
          15.widthBox,
          const CustomSvgPicture(
            imagePath:
                "assets/features/watch_list_screen/filter-alt-svgrepo-com.svg",
            height: 20,
            width: 20,
            color: ColorConstants.primaryTealColor,
          ),
        ],
      ),
    );
  }
}
