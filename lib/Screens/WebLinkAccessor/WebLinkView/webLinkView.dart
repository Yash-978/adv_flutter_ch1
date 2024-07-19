import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../WebLinkProvider/webLinkProvider.dart';

class WebLinkViewPage extends StatelessWidget {
  const WebLinkViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
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
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            '     If you have any queries , get in touch with us. We will be happy to help you',
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
          ),
          Container(
            height: h * 0.1,
            width: w * 0.90,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              border: Border.all(
                  color: Color(
                    0xffECF4FD,
                  ),
                  width: 2),
            ),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.phone_iphone,
                    color: Colors.blue,
                    size: 40,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    webLinkProviderFalse.LaunchPhone();
                  },
                  child: Text(
                    '+91 9537721511',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 20),
                  ),
                ),

              ],
            ),
          ),
          Container(
            height: h * 0.1,
            width: w * 0.90,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              border: Border.all(
                  color: Color(
                    0xffECF4FD,
                  ),
                  width: 2),
            ),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.mail_outline_rounded,
                    color: Colors.blue,
                    size: 40,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    webLinkProviderFalse.LaunchMail();
                  },
                  child: Text(
                    'virwalyash@gmail.com',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 20),
                  ),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
