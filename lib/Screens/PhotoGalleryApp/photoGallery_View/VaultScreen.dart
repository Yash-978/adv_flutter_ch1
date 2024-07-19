import 'package:adv_flutter_ch1/Utils/imageList.dart';
import 'package:flutter/material.dart';

class VaultPage extends StatelessWidget {
  const VaultPage({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Your Vault'),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: h * 1,
            width: w * 1,
            child: GridView.builder(
              itemCount: vaultImageList.length,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    Container(
                      height: h * 0.14,
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          border: Border.all(
                              // color: Colors.black,
                              ),
                          image: DecorationImage(
                              image: AssetImage(vaultImageList[index])),
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
