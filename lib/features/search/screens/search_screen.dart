import 'package:flutter/material.dart';
import 'package:iouring_task/features/widgets/custom_text_form_field.dart';

///[SearchScreen] is a stateful widget which returns a [Scaffold] widget.
///It is the screen which contains the search bar.
class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  late FocusNode _focusNode;

  @override
  void initState() {
    _focusNode = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          CustomTextFormField(
            focusNode: _focusNode,
            readOnly: false,
          ),
        ],
      ),
    ));
  }
}
