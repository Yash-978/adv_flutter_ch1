import 'package:adv_flutter_ch1/Screens/HomeScreen/HomeProvider/homeProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    Homeprovider homeproviderTrue =
        Provider.of<Homeprovider>(context, listen: true);
    Homeprovider homeproviderFalse =
        Provider.of<Homeprovider>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_back_ios_rounded,
                    size: 30,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.add_circle_outline_rounded,
                    size: 35,
                  ),
                ),
              ],
            ),
            Container(
              height: h * 0.22,
              width: w * 0.22,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      fit: BoxFit.contain,
                      image: AssetImage('assets/images/profileImage3.jpg'))),
            ),
            SizedBox(
              height: h * 0.010,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                'Yash Jain',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
            ),
            SizedBox(
              height: h * 0.050,
            ),
            ListTile(
              leading: Icon(
                Icons.mode_night,
                size: 30,
              ),
              trailing: Switch(
                onChanged: (value) {
                  homeproviderFalse.changeTheme();
                },
                value: homeproviderTrue.isLight,
              ),
              title: Text(
                'Dark Mode',
                style: TextStyle(fontSize: 20),
              ),
            ),
            buildListTile(
                leadingIcon: Icons.grid_on_rounded, leadingText: 'Story'),
            buildListTile(
                leadingIcon: Icons.settings,
                leadingText: 'Settings and Privacy'),
            buildListTile(
                leadingIcon: Icons.message_outlined,
                leadingText: 'Help Center'),
            buildListTile(
                leadingIcon: Icons.notifications, leadingText: 'Notification'),
          ],
        ),
      ),
    );
  }

  ListTile buildListTile({required leadingIcon, required leadingText}) {
    return ListTile(
      leading: Icon(
        leadingIcon,
        size: 30,
      ),
      title: Text(
        leadingText,
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
