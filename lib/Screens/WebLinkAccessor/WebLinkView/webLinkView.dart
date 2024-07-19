import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../WebLinkProvider/webLinkProvider.dart';

class WebLinkViewPage extends StatelessWidget {
  const WebLinkViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    webLinkProvider webLinkProviderTrue =
        Provider.of<webLinkProvider>(context, listen: true);
    webLinkProvider webLinkProviderFalse =
        Provider.of<webLinkProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Contact Us',
          style: TextStyle(
              color: Colors.blue, fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Text('')
        ],
      ),
    );
  }
}
