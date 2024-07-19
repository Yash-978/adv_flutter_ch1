import 'package:adv_flutter_ch1/Utils/imageList.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../photoGalleryProvider/photoGallery_provider.dart';
import 'VaultScreen.dart';

class PhotoGalleryView extends StatelessWidget {
  const PhotoGalleryView({super.key});

  @override
  Widget build(BuildContext context) {
    GalleryProvider photoGalleryProviderTrue =
        Provider.of<GalleryProvider>(context, listen: true);
    GalleryProvider galleryProviderFalse =
        Provider.of<GalleryProvider>(context, listen: false);

    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.list,
            size: 25,
          ),
        ),
        centerTitle: true,
        title: Text(
          'Gallery',
          style: TextStyle(
            fontSize: 30,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: h * 0.051,
                  width: w * 0.32,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Color(0xffE3EEFE),
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: w * 0.010,
                      ),
                      Text(
                        'Albums',
                        style: TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                ),
                Spacer(),
                IconButton(onPressed: () {}, icon: Icon(Icons.search)),
                PopupMenuButton(
                  itemBuilder: (context) => popUpMenuItems,
                  iconColor: Colors.black,
                  onSelected: (value) async {
                    if (value == 1) {
                      await galleryProviderFalse.authentication();
                      if (galleryProviderFalse.didAuthenticate) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const VaultPage(),
                          ),
                        );
                      }
                    }
                  },
                ),
              ],
            ),
            SizedBox(
              height: h * 1,
              width: w * 1,
              child: GridView.builder(
                itemCount: imageList.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
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
                                image: AssetImage(imageList[index])),
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

List<PopupMenuEntry> popUpMenuItems = [
  const PopupMenuItem(
    value: 0,
    child: Text(
      'Settings',
      style: TextStyle(color: Colors.black, fontSize: 20),
    ),
  ),
  const PopupMenuItem(
    value: 1,
    child: Text(
      'Show Vault',
      style: TextStyle(color: Colors.black, fontSize: 20),
    ),
  ),
];
