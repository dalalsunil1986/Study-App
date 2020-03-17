import 'package:flutter/foundation.dart';
import 'package:study/models/book.dart';

class ChapterProvider extends ChangeNotifier {
  String errorMessage;
  bool _loading = true;
  Book _book;

  void setLoading(value) {
    _loading = value;
    notifyListeners();
  }

  bool get isLoading {
    return _loading;
  }

  void setBook(value) {
    _book = value;
    notifyListeners();
  }

  Book get book {
    return _book;
  }

  void setMessage(value) {
    errorMessage = value;
    notifyListeners();
  }

  String get message {
    return errorMessage;
  }
}
