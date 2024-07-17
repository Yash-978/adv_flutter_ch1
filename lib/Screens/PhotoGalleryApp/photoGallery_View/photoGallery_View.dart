import 'package:flutter/material.dart';

class PhotoGalleryView extends StatelessWidget {
  const PhotoGalleryView({super.key});

  @override
  Widget build(BuildContext context) {
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Albums',
                    style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  PopupMenuButton(
                    initialValue: popUpMenuItems,
                    itemBuilder: (context) => popUpMenuItems,

                    onSelected: (value) {
                      if (value == 1) {

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
