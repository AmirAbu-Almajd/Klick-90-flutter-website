import 'package:draggable_scrollbar/draggable_scrollbar.dart';
import 'package:flutter/material.dart';

class CustomScrollbar extends StatefulWidget {
  final BoxScrollView Function(ScrollController controller) builder;
  const CustomScrollbar({Key? key, required this.builder}) : super(key: key);

  @override
  _CustomScrollbarState createState() => _CustomScrollbarState();
}

class _CustomScrollbarState extends State<CustomScrollbar> {
  late ScrollController _scrollController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  Widget build(BuildContext context) => ScrollConfiguration(
    behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
    child: DraggableScrollbar(
          scrollThumbBuilder: scrollThumbBuilder,
          child: widget.builder(_scrollController),
          scrollbarTimeToFade: Duration(microseconds: 740),
          controller: _scrollController,
          heightScrollThumb: MediaQuery.of(context).size.height * 0.25,
          backgroundColor: Theme.of(context).colorScheme.primary,
        ),
  );

  Widget scrollThumbBuilder(
    Color backgroundColor,
    Animation<double> thumbAnimation,
    Animation<double> labelAnimation,
    double height, {
    Text? labelText,
    BoxConstraints? labelConstraints,
  }) =>
      FadeTransition(
        opacity: thumbAnimation,
        child: Container(
          color: backgroundColor,
          height: height,
          width: MediaQuery.of(context).size.width * 0.01,
        ),
      );
}
