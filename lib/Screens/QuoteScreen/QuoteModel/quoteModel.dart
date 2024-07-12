import 'package:flutter/material.dart';
class QuoteModel
{
  String? quote;
  String? author;
  QuoteModel({this.quote,this.author});
  factory QuoteModel.fromQuote(Map m1)
  {
    return QuoteModel(author: m1['author'],
        quote: m1['quote']
    );
  }
  List <QuoteModel> quoteModel_List=[];
  QuoteModel.toList({required List l1})
  {
    for(int i=0;i<l1.length;i++)
    {
      quoteModel_List.add(QuoteModel.fromQuote(l1[i]));
    }
  }

}