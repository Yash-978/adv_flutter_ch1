import 'package:adv_flutter_ch1/Screens/HomeScreen/HomePageView/homePage.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final pageController = PageController();

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: PageView(
        controller: pageController,
        children: [
          Column(
            children: [
              Container(
                height: h * 0.5,
                width: w * 1,
                decoration: BoxDecoration(
                    color: Colors.yellow,
                    image: DecorationImage(
                      fit: BoxFit.fitHeight,
                      image: AssetImage('assets/images/onboarding_bg1.png'),
                    )),
              ),
              Stack(
                children: [
                  Container(
                    height: h * 0.5,
                    width: w * 1,
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                    ),
                  ),
                  Container(
                    height: h * 0.5,
                    width: w * 1,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(90)),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: h * 0.04,
                        ),
                        SmoothPageIndicator(
                          effect: WormEffect(
                              type: WormType.thin,
                              spacing: 16,
                              dotColor: Colors.grey,
                              activeDotColor: Colors.yellow,
                              dotHeight: 9),
                          controller: pageController,
                          count: 3,
                          onDotClicked: (index) => pageController.animateToPage(
                            index,
                            duration: Duration(
                              milliseconds: 500,
                            ),
                            curve: Curves.easeInOut,
                          ),
                        ),
                        SizedBox(
                          height: h * 0.04,
                        ),
                        Text(
                          'Hmmm, Healthy food',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 25),
                        ),
                        SizedBox(
                          height: h * 0.03,
                        ),
                        SizedBox(
                          width: w * 0.8,
                          child: Text(
                            textAlign: TextAlign.center,
                            'A vareity of foods made by the best chef. Ingredients are easy to find, all delicious flavours can only be found at coolbunda',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 19,
                                color: Colors.grey),
                          ),
                        ),
                        SizedBox(
                          height: h * 0.06,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            TextButton(
                                onPressed: () {
                                  pageController.jumpToPage(2);
                                },
                                child: Text(
                                  'Skip Now',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black,
                                      fontSize: 20),
                                )),
                            SizedBox(
                              width: w * 0.25,
                            ),
                            CircleAvatar(
                              backgroundColor: Color(0xffFFE14C),
                              radius: 35,
                              child: IconButton(
                                  onPressed: () {
                                    pageController.nextPage(
                                        duration: Duration(milliseconds: 500),
                                        curve: Curves.easeInOut);
                                  },
                                  icon: Icon(
                                    Icons.arrow_circle_right_rounded,
                                    color: Colors.white,
                                    size: 40,
                                  )),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
          Column(
            children: [
              Container(
                height: h * 0.5,
                width: w * 1,
                decoration: BoxDecoration(
                    color: Color(0xffA1E2EF),
                    image: DecorationImage(
                      fit: BoxFit.fitHeight,
                      image: AssetImage('assets/images/onboarding_bg2.png'),
                    )),
              ),
              Stack(
                children: [
                  Container(
                    height: h * 0.5,
                    width: w * 1,
                    decoration: BoxDecoration(
                      color: Color(0xffA1E2EF),
                    ),
                  ),
                  Container(
                    height: h * 0.5,
                    width: w * 1,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(90)),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: h * 0.04,
                        ),
                        SmoothPageIndicator(
                          effect: WormEffect(
                              type: WormType.thin,
                              spacing: 16,
                              dotColor: Colors.grey,
                              activeDotColor: Color(0xffA1E2EF),
                              dotHeight: 9),
                          controller: pageController,
                          count: 3,
                        ),
                        SizedBox(
                          height: h * 0.04,
                        ),
                        Text(
                          'Fresh Drinks, Stay Fresh',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 25),
                        ),
                        SizedBox(
                          height: h * 0.03,
                        ),
                        SizedBox(
                          width: w * 0.8,
                          child: Text(
                            textAlign: TextAlign.center,
                            'Not all food, we provide clear healthy drink options for you. Fresh taste alaways accompanies you',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 19,
                                color: Colors.grey),
                          ),
                        ),
                        SizedBox(
                          height: h * 0.08,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            TextButton(
                                onPressed: () {
                                  pageController.jumpToPage(2);
                                },
                                child: Text(
                                  'Skip Now',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black,
                                      fontSize: 20),
                                )),
                            SizedBox(
                              width: w * 0.25,
                            ),
                            CircleAvatar(
                              backgroundColor: Color(0xffA1E2EF),
                              radius: 35,
                              child: IconButton(
                                  onPressed: () {
                                    pageController.nextPage(
                                        duration: Duration(milliseconds: 500),
                                        curve: Curves.easeInOut);
                                  },
                                  icon: Icon(
                                    Icons.arrow_circle_right_rounded,
                                    color: Colors.white,
                                    size: 40,
                                  )),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
          Column(
            children: [
              Container(
                height: h * 0.5,
                width: w * 1,
                decoration: BoxDecoration(
                    color: Color(0xff33B679),
                    image: DecorationImage(
                      fit: BoxFit.fitHeight,
                      image: AssetImage('assets/images/onboarding_bg3.png'),
                    )),
              ),
              Stack(
                children: [
                  Container(
                    height: h * 0.5,
                    width: w * 1,
                    decoration: BoxDecoration(
                      color: Color(0xff33B679),
                    ),
                  ),
                  Container(
                    height: h * 0.5,
                    width: w * 1,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(90)),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: h * 0.04,
                        ),
                        SmoothPageIndicator(
                          effect: WormEffect(
                              type: WormType.thin,
                              spacing: 16,
                              dotColor: Colors.grey,
                              activeDotColor: Color(0xff33B679),
                              dotHeight: 9),
                          controller: pageController,
                          count: 3,
                        ),
                        SizedBox(
                          height: h * 0.04,
                        ),
                        Text(
                          "Let's Cooking",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 25),
                        ),
                        SizedBox(
                          height: h * 0.03,
                        ),
                        SizedBox(
                          width: w * 0.8,
                          child: Text(
                            textAlign: TextAlign.center,
                            'Are you ready to make a dish for your friends or family? create an account and cooks',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 19,
                                color: Colors.grey),
                          ),
                        ),
                        SizedBox(
                          height: h * 0.13,
                        ),
                        GestureDetector(
                          onTap: () async {
                            final onBoarding = await SharedPreferences.getInstance();
                            onBoarding.setBool('showHome', true);
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                builder: (context) => Homepage(),
                              ),
                            );
                          },
                          child: Container(
                            height: h * 0.075,
                            width: w * 0.9,
                            decoration: BoxDecoration(
                                color: Color(0xff32B77A),
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                              child: Text(
                                'Get Started',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
