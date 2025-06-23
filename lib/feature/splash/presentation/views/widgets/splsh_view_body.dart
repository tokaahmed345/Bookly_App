import 'package:bookly/core/utils/assets/assets.dart';
import 'package:bookly/core/utils/app_path/app_pathes.dart';
import 'package:bookly/feature/splash/presentation/views/widgets/custom_animated_builder.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> sliderAnimation; //control animationcontroller

  @override
  void initState() {
    super.initState();
    navigateToHome();

    initSlideAnimation();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Lottie.asset(AppAssets.splashLogo, fit: BoxFit.contain, width: 100),
        const SizedBox(
          height: 4,
        ),
        CustomAnimatedBuilder(sliderAnimation: sliderAnimation),
      ],
    );
  }

  void initSlideAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));
    sliderAnimation = Tween<Offset>(begin: const Offset(0, 6), end: Offset.zero)
        .animate(animationController);
    animationController.forward();
  }

  void navigateToHome() {
    Future.delayed(const Duration(seconds: 3), () {
      context.go(AppPathes.homePage);
    });
  }
}
