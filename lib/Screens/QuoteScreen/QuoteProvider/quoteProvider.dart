import 'package:adv_flutter_ch1/Utils/global.dart';
import 'package:flutter/material.dart';

import '../QuotePageView/quotePage.dart';

class QuoteProvider extends ChangeNotifier {
  String? quote;
  String? author;

  void addDetails() {
    quote = txtQuote.text;
    author = txtAuthor.text;
    notifyListeners();
  }
 

  void addQuote() {
    quoteList.insert(0, {'quote': quote, 'author': author});
    notifyListeners();

  }
  void removeQuote(int index)
  {
    quoteList.removeAt(index);
    notifyListeners();
  }
}
