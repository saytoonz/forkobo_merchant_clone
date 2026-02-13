import 'package:flutter/material.dart';
import 'package:flutter_vibrate/flutter_vibrate.dart';

class PageControllerNotifier extends ChangeNotifier {
  //Based on screen width
  double _offset = 0.0;

  //Based on pages
  double? _page = 0.0;

  PageControllerNotifier(PageController controller) {
    controller.addListener(() {
      _offset = controller.offset;
      _page = controller.page;
      notifyListeners();
    });
  }

  double get offset => _offset;
  double get page => _page ?? 0;
}

class ScrollControllerNotifier extends ChangeNotifier {
  //Based on screen width
  double _position = 0.0;
  bool _isWhitePage = false;
  bool _vibrate = false;

  ScrollControllerNotifier(ScrollController controller) {
    controller.addListener(() {
      _position = controller.position.pixels;
      if (_position >= 220) {
        _isWhitePage = true;
        if (_vibrate) {
          _vibrate = false;
          Vibrate.feedback(FeedbackType.impact);
        }
      } else {
        _vibrate = true;
        _isWhitePage = false;
      }
      notifyListeners();
    });
  }

  double get position => _position;
  bool get isWhitePage => _isWhitePage;
}
