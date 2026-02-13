import 'dart:async';
import '../../di.dart';
import '../../utils/constants.dart';
import '/routes.dart';
import '../../utils/extensions.dart';
import 'package:flutter/material.dart';
import '../widget/app_button_one.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';
import '../widget/animatable_circle.dart';
import '../widget/onboarding_text_container.dart';
import '../notifiers/page_controller_notifier.dart';
import '../widget/terms_and_privacy_text_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();

  int delayInSecs = 3;
  late int countDownInt = delayInSecs;

  Timer? timer;

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      timer = Timer.periodic(const Duration(seconds: 1), (t) {
        timer = t;
        Duration duration = const Duration(milliseconds: 500);
        Curve curve = Curves.easeIn;
        if (countDownInt == 0) {
          if (_pageController.page == 3) {
            _pageController.jumpTo(0);
          } else {
            _pageController.nextPage(duration: duration, curve: curve);
          }
          countDownInt = delayInSecs;
        } else {
          countDownInt--;
        }
        setState(() {});
      });
    });
  }

  @override
  void dispose() {
    timer?.cancel();
    timer = null;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double width = 375.0;
    double centerFromLeft = w > width ? ((w - width) / 2) : 0;

    return ChangeNotifierProvider(
      create: (context) => PageControllerNotifier(_pageController),
      child: Consumer<PageControllerNotifier>(
        builder: (context, notifier, child) {
          bool onPage1_2 = notifier.page < 0.5;
          bool onPage2_3 = notifier.page < 1.5;
          bool onPage3_4 = notifier.page < 2.5;

          return Scaffold(
            backgroundColor: context.scaffoldColor,
            body: SafeArea(
              top: false,
              child: Column(
                children: [
                  Expanded(
                    // height: 550,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        PageView(
                          controller: _pageController,
                          physics: const ClampingScrollPhysics(),
                          onPageChanged: (value) {
                            setState(() {
                              countDownInt = delayInSecs;
                            });
                          },
                          children: const [
                            OnboardingTextContainer(
                              title: 'onboarding.page1.title',
                              description: 'onboarding.page1.description',
                            ),
                            OnboardingTextContainer(
                              title: 'onboarding.page2.title',
                              description: 'onboarding.page2.description',
                            ),
                            OnboardingTextContainer(
                              title: 'onboarding.page3.title',
                              description: 'onboarding.page2.description',
                            ),
                            OnboardingTextContainer(
                              title: 'onboarding.page4.title',
                              description: 'onboarding.page2.description',
                            ),
                          ],
                        ),
                        AnimatableCircle(
                          assetImg: 'assets/jpeg/11.png',
                          width: 150,
                          height: 150,
                          top: onPage1_2
                              ? 180.0
                              : (onPage2_3 ? 72 : (onPage3_4 ? 204 : 79)),
                          left:
                              centerFromLeft +
                              (onPage1_2
                                  ? width - 137
                                  : (onPage2_3
                                        ? 102
                                        : (onPage3_4 ? -28 : -35))),
                        ),
                        AnimatableCircle(
                          assetImg: 'assets/jpeg/12.png',
                          width: 130,
                          height: 130,
                          top: onPage1_2
                              ? 180.0
                              : (onPage2_3 ? 191 : (onPage3_4 ? 115 : 64)),
                          left:
                              centerFromLeft +
                              (onPage1_2
                                  ? -23
                                  : (onPage2_3
                                        ? width - 120
                                        : (onPage3_4 ? 122 : width - 138))),
                        ),
                        AnimatableCircle(
                          assetImg: 'assets/jpeg/13.png',
                          width: 120.0,
                          height: 120.0,
                          top: onPage1_2
                              ? 91.0
                              : (onPage2_3 ? 216 : (onPage3_4 ? 72 : 204)),
                          left:
                              centerFromLeft +
                              (onPage1_2
                                  ? 117.0
                                  : (onPage2_3
                                        ? -8
                                        : (onPage3_4 ? -11 : width - 117))),
                        ),
                        AnimatableCircle(
                          assetImg: 'assets/jpeg/14.png',
                          width: 100.0,
                          height: 100.0,
                          top: onPage1_2
                              ? 235
                              : (onPage2_3 ? 72 : (onPage3_4 ? 222 : 214)),
                          left:
                              centerFromLeft +
                              (onPage1_2
                                  ? 127
                                  : (onPage2_3
                                        ? width - 97
                                        : (onPage3_4 ? width - 118.0 : 117))),
                        ),
                        AnimatableCircle(
                          assetImg: 'assets/jpeg/15.png',
                          width: 80.0,
                          height: 80.0,
                          top: onPage1_2
                              ? 71
                              : (onPage2_3 ? 241 : (onPage3_4 ? 92 : 244)),
                          left:
                              centerFromLeft +
                              (onPage1_2
                                  ? 7
                                  : (onPage2_3
                                        ? 147
                                        : (onPage3_4 ? width - 98 : -3))),
                        ),
                        AnimatableCircle(
                          assetImg: 'assets/jpeg/16.png',
                          width: 60.0,
                          height: 60.0,
                          top: onPage1_2
                              ? 84
                              : (onPage2_3 ? 82 : (onPage3_4 ? 267 : 119)),
                          left:
                              centerFromLeft +
                              (onPage1_2
                                  ? width - 115
                                  : (onPage2_3 ? 1 : (onPage3_4 ? 165 : 136))),
                        ),
                        Positioned(
                          bottom: 0,
                          child: Column(
                            children: [
                              const SizedBox(height: 32),
                              IgnorePointer(
                                child: SmoothPageIndicator(
                                  controller: _pageController,
                                  count: 4,
                                  axisDirection: Axis.horizontal,
                                  effect: ExpandingDotsEffect(
                                    dotColor: context.colors.secondary,
                                    activeDotColor: context.colors.primary,
                                    dotWidth: 5.0,
                                    dotHeight: 5.0,
                                    spacing: 5.0,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 34),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 47,
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: AppButton(
                      title: 'onboarding.buttonTitle',
                      onTap: () {
                        context.goNamed(RouteConsts.login);
                        prefs.setBool(PrefKeys.showWalkThru, false);
                      },
                    ),
                  ),
                  const SizedBox(height: 26),
                  const TermsAndPrivacyTextWidget(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
