import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../WebLinkProvider/webLinkProvider.dart';

class WebLinkViewPage extends StatelessWidget {
  const WebLinkViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    LauncherProvider launcherProvider =
        Provider.of<LauncherProvider>(context, listen: false);
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.account_circle_outlined,
          color: Colors.lightBlueAccent,
          size: 32,
        ),
        centerTitle: true,
        title: const Text(
          'Contact Us',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 28,
            color: Colors.blue,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            SizedBox(
              height: height * 0.01,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'if you have any queries, get in touch with',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            const Text(
              'us. We will be happy to help you!',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: height * 0.05,
            ),
            Container(
              height: height * 0.09,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blue,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(9),
              ),
              child: GestureDetector(
                onTap: () {
                  launcherProvider.phoneLauncher();
                },
                child: Row(
                  children: [
                    SizedBox(
                      width: width * 0.07,
                    ),
                    const Icon(
                      Icons.mail_outline,
                      color: Colors.blue,
                      size: 37,
                    ),
                    SizedBox(
                      width: width * 0.05,
                    ),
                    const Text(
                      '+91 9537721511',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 19,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Container(
              height: height * 0.09,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blue,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(9),
              ),
              child: GestureDetector(
                onTap: () {
                  launcherProvider.mailLauncher();
                },
                child: Row(
                  children: [
                    SizedBox(
                      width: width * 0.07,
                    ),
                    const Icon(
                      Icons.mail_outline,
                      color: Colors.blue,
                      size: 37,
                    ),
                    SizedBox(
                      width: width * 0.05,
                    ),
                    const Text(
                      'virwalyash@gmail.com',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 19,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: height * 0.07,
            ),
            Container(
              height: 350,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blue,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(9),
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Social Media',
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 23),
                  ),
                  const Divider(
                    height: 37,
                    color: Colors.blue,
                  ),
                  Container(
                    height: height * 0.09,
                    width: width * 0.8,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.blue,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(9),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        launcherProvider.linkLauncher();
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: height * 0.25,
                            width: width * 0.25,
                            child: Image.asset('assets/images/linkedin.png'),
                          ),
                          SizedBox(
                            width: width * 0.05,
                          ),
                          const Text(
                            'Yash Jain',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 19,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Container(
                    height: height * 0.09,
                    width: width * 0.8,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.blue,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(9),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        launcherProvider.instLauncher();
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: height * 0.25,
                            width: width * 0.25,
                            child: Image.asset('assets/images/ig.jpg'),
                          ),
                          SizedBox(
                            width: width * 0.05,
                          ),
                          const Text(
                            'Yash Jain',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 19,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Container(
                    height: height * 0.09,
                    width: width * 0.8,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.blue,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(9),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        launcherProvider.gitLauncher();
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: height * 0.15,
                            width: width * 0.15,
                            child: Image.asset('assets/images/git.png'),
                          ),
                          SizedBox(
                            width: width * 0.07,
                          ),
                          const Text(
                            'Yash Jain',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 19,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
