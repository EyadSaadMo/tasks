import 'dart:async';

import 'package:flutter/material.dart';
import 'package:test1/core/colors/colors.dart';
import 'package:test1/core/utilities/media_query.dart';
import 'package:test1/core/utilities/routers.dart';
import 'package:test1/core/utilities/strings.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTime() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed(AppRoutes.uploadImage);
  }

  @override
  void initState() {
    startTime();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.kSplashColor,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            SizedBox(
              height: kHeight(context) * 0.04,
            ),
            Row(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage('assets/images/im2.png'))),
                ),
                const Spacer(),
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage('assets/images/im1.png'))),
                ),
              ],
            ),
            SizedBox(
              height: kHeight(context) * 0.2,
            ),
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('assets/images/im3.png'))),
            ),
            SizedBox(
              height: kHeight(context) * 0.02,
            ),
            const Text(
              AppStrings.appName,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: ColorManager.kWhiteColor),
            ),
            SizedBox(
              height: kHeight(context) * 0.01,
            ),
            Text(
              AppStrings.breastCancerDetection,
              style: TextStyle(fontSize: 18, color: ColorManager.kWhiteColor),
            ),
          ],
        ),
      ),
    );
  }
}
