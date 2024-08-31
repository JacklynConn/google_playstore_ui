import 'package:flutter/material.dart';
import 'package:myfirst_project_flutter3/Styles/custom_text.dart';
import 'package:myfirst_project_flutter3/models/onboarding_medel.dart';
import 'package:myfirst_project_flutter3/page/main_pages.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingPage19 extends StatefulWidget {
  const OnboardingPage19({super.key});

  @override
  State<OnboardingPage19> createState() => _OnboardingPage19State();
}

class _OnboardingPage19State extends State<OnboardingPage19> {
  final PageController _controller = PageController(initialPage: 0);

  bool lastPage = false;

  Future<void> saveLogin() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.setBool("login", true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: onboardingsList.length,
              controller: _controller,
              onPageChanged: (value) {
                setState(() {
                  lastPage = (value == onboardingsList.length - 1);
                });
              },
              itemBuilder: (context, index) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 250,
                      height: 250,
                      child: Image.network(onboardingsList[index].image),
                    ),
                    Text(
                      onboardingsList[index].title,
                      style: textStyle(18),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      onboardingsList[index].description,
                      textAlign: TextAlign.center,
                    ),
                  ],
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(
                onPressed: () {
                  _controller.jumpToPage(onboardingsList.length);
                },
                child: const Text("Skip"),
              ),
              SmoothPageIndicator(
                controller: _controller, // PageController
                count: onboardingsList.length,
                effect: const WormEffect(), // your preferred effect
                onDotClicked: (index) {},
              ),
              lastPage
                  ? TextButton(
                      onPressed: () {
                        saveLogin();
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MainPages(),
                          ),
                          (route) => false,
                        );
                      },
                      child: const Text("Done"),
                    )
                  : TextButton(
                      onPressed: () {
                        _controller.nextPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeIn,
                        );
                      },
                      child: const Text("Next")),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
