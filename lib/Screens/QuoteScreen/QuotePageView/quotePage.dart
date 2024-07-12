import 'package:adv_flutter_ch1/Screens/QuoteScreen/QuoteModel/quoteModel.dart';
import 'package:adv_flutter_ch1/Screens/QuoteScreen/QuoteProvider/quoteProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../Utils/global.dart';

class QuotePage extends StatelessWidget {
  const QuotePage({super.key});

  @override
  Widget build(BuildContext context) {
    // void _addQuote() {
    //   if (_formKey.currentState!.validate()) {
    //     Provider.of<QuoteProvider>(context, listen: false)
    //         .addQuote(txtQuote.text, txtAuthor.text);
    //     txtQuote.clear();
    //     txtAuthor.clear();
    //   }
    // }
    quoteModelData = QuoteModel.toList(l1: quoteList);
    QuoteProvider quoteProviderTrue =
        Provider.of<QuoteProvider>(context, listen: true);
    QuoteProvider quoteProviderFalse =
        Provider.of<QuoteProvider>(context, listen: false);
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return Form(
                key: _formKey,
                child: AlertDialog(
                  title: Column(
                    children: [
                      addQuoteTextForm(
                          quoteController: txtQuote, label: 'Quote'),
                      SizedBox(
                        height: h * 0.010,
                      ),
                      addQuoteTextForm(
                          quoteController: txtAuthor, label: 'Author'),
                      Row(
                        children: [
                          TextButton(
                            onPressed: () {
                              bool response = _formKey.currentState!.validate();
                              if (response) {
                                quoteProviderFalse.addDetails();
                                quoteProviderFalse.addQuote();
                                Navigator.of(context).pop();
                              }
                              _formKey.currentState!.reset();
                            },
                            child: const Text('OK'),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text('Cancel'),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              );
            },
          );
        },
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Quotes',
          style: TextStyle(fontSize: 30),
        ),
      ),
      body: ListView.builder(
        itemCount: quoteModelData.quoteModel_List.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: Text(
                "${index + 1}",
                style: TextStyle(fontSize: 25),
              ),
              title: Text(quoteModelData.quoteModel_List[index].quote!),
              subtitle: Text(quoteModelData.quoteModel_List[index].author!),
              trailing: IconButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text('Do you want to Delete your Quote.'),
                        actions: [
                          TextButton(
                              onPressed: () {
                                quoteProviderFalse.removeQuote(index);
                                Navigator.of(context).pop();
                              },
                              child: Text('Ok')),
                          TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text('Cancel')),
                        ],
                      );
                    },
                  );
                },
                icon: Icon(
                  Icons.delete,
                  size: 30,
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  TextFormField addQuoteTextForm({required quoteController, required label}) {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'please enter a quote';
        }
        return null;
      },
      keyboardType: TextInputType.text,
      controller: quoteController,
      decoration: InputDecoration(
        labelText: label,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.green),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}

GlobalKey<FormState> _formKey = GlobalKey();
TextEditingController txtQuote = TextEditingController();
TextEditingController txtAuthor = TextEditingController();
QuoteModel quoteModelData = QuoteModel();
