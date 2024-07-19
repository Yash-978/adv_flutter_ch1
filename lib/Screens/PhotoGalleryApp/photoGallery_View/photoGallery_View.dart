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
            Container(
              height: h * 0.051,
              width: w * 0.35,
              decoration: BoxDecoration(
                color: Color(0xffE3EEFE),
                borderRadius: BorderRadius.circular(18),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Albums',
                    style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
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
            ),
            SizedBox(
              height: h * 1,
              width: w * 1,
              child: GridView.builder(
                itemCount: 15,
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
    child: Text('Settings'),
  ),
  const PopupMenuItem(
    value: 1,
    child: Text('Show Vault'),
  ),
];
