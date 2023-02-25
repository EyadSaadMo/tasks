import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:test1/core/colors/colors.dart';
import 'package:test1/feature/splash/presentation/widgets/main_button.dart';

import '../../core/utilities/media_query.dart';
import '../../core/utilities/strings.dart';

class UploadImage extends StatefulWidget {
  const UploadImage({Key? key}) : super(key: key);

  @override
  State<UploadImage> createState() => _UploadImageState();
}

class _UploadImageState extends State<UploadImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.kWhiteColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: kHeight(context) * 0.1,
          ),
          Expanded(
            flex: 3,
            child: Container(
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('assets/images/fImage.png'))),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                AppStrings.upload,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: ColorManager.kBlackColor),
              ),
              const Text(
                AppStrings.histopathologicalimage,
                style: TextStyle(
                    fontSize: 18,
                    color: ColorManager.kBlackColor,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: kHeight(context) * 0.01,
              ),
              Container(
                width: 180,
                child: const Text(
                  AppStrings.uploadImage,
                  style:
                      TextStyle(fontSize: 16, color: ColorManager.kgreyColor),
                ),
              ),
            ],
          ),
          Expanded(child: SizedBox()),
          InkWell(
            onTap: () {
              showDialog(
                context: context,
                builder: ((context) => CircularPercentIndicator(
                      radius: 50,
                      onAnimationEnd: (() {
                        showDialog(
                          context: context,
                          builder: (context) => Center(
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Material(
                                elevation: 20,
                                child: Container(
                                  width: kWidth(context) / 1.5,
                                  height: kHeight(context) / 2.5,
                                  child: Column(
                                    children: [
                                      Container(
                                        width: kWidth(context),
                                        height: kHeight(context) / 3.75,
                                        decoration: BoxDecoration(
                                            color: ColorManager.kWhiteColor,
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    'assets/images/r1.png'))),
                                      ),
                                      // SizedBox(
                                      //   height: kHeight(context) * 0.04,
                                      // ),
                                      Text(
                                        'The Result is:',
                                        style: TextStyle(fontSize: 18),
                                      ),
                                      SizedBox(
                                        height: kHeight(context) * 0.02,
                                      ),
                                      Text(
                                        'Bengin',
                                        style: TextStyle(
                                            fontSize: 22,
                                            color: Colors.green,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Row(
                                        children: [
                                          Expanded(child: SizedBox()),
                                          // Spacer(),
                                          InkWell(
                                            onTap: () {
                                              Navigator.pop(context);
                                            },
                                            child: const Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 20),
                                              child: Text(
                                                'Cancel',
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    color: Colors.red),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      }),
                      lineWidth: 10.0,
                      animation: true,
                      percent: 1,
                      progressColor: ColorManager.kSplashColor,
                      backgroundColor: ColorManager.kWhiteColor,
                      // center: Image.asset('assets/images/Progress.png'),
                      center: Text(
                        '100%',
                        style: TextStyle(color: ColorManager.kWhiteColor),
                      ),
                    )),
              );
            },
            child: Container(
              width: kWidth(context) / 2.5,
              height: 50,
              decoration: BoxDecoration(
                color: ColorManager.kSplashColor,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.upload_sharp,
                    color: ColorManager.kWhiteColor,
                  ),
                  SizedBox(
                    width: kWidth(context) * 0.02,
                  ),
                  Text(
                    AppStrings.upload,
                    style: TextStyle(
                        color: ColorManager.kWhiteColor,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: kHeight(context) * 0.06,
          )
        ],
      ),
    );
  }
}
