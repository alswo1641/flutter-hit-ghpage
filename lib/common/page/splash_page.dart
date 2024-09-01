import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hit_project/board/board_main_page.dart';
import 'package:hit_project/common/layout/app_text.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );

    animation = CurvedAnimation(
      parent: controller,
      curve: Curves.easeIn,
    );

    controller.forward();

    navigateToMainPage();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  navigateToMainPage() async {
    await Future.delayed(const Duration(seconds: 2), () {});
    Get.off(() => BoardMainPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Center(
            child: FadeTransition(
              opacity: animation,
              child: const Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('HIT-PROJECT', style: AppTextTheme.black24b),
                  SizedBox(height: 10),
                  Text('Just To Do IT', style: AppTextTheme.black18m),
                ],
              ),
            ),
          ),
          const Positioned(
            bottom: 20,
            left: 0,
            right: 0,
            child: Text(
              'App Developer 권민재',
              style: AppTextTheme.black14m,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
