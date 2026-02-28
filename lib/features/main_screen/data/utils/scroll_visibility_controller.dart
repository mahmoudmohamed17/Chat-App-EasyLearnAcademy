import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class ScrollVisibilityController {
  final ScrollController scrollController = ScrollController();

  final ValueNotifier<bool> isBottonNavVisibile = ValueNotifier(true);

  ScrollVisibilityController() {
    scrollController.addListener(_handleScroll);
  }

  void _handleScroll() {
    final direction = scrollController.position.userScrollDirection;

    if (direction == ScrollDirection.forward) {
      isBottonNavVisibile.value = true;
    } else if (direction == ScrollDirection.reverse) {
      isBottonNavVisibile.value = false;
    }
  }

  void dispose() {
    scrollController.removeListener(_handleScroll);
    scrollController.dispose();
    isBottonNavVisibile.dispose();
  }
}
