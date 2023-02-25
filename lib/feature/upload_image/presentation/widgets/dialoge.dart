import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../../../core/colors/colors.dart';
import '../../../../core/utilities/media_query.dart';
import '../../../../core/utilities/strings.dart';

class Dialogue extends StatelessWidget {
  const Dialogue({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircularPercentIndicator(

      radius: 50,
      onAnimationEnd: (() {
        showDialog(
          context: context,
          builder: (context) => Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Material(
                elevation: 20,
                child: SizedBox(
                  width: kWidth(context) / 1.5,
                  height: kHeight(context) / 2.5,
                  child: Column(
                    children: [
                      Container(
                        width: kWidth(context),
                        height: kHeight(context) / 3.75,
                        decoration: const BoxDecoration(
                          color: ColorManager.kWhiteColor,
                          image: DecorationImage(
                            image: AssetImage(
                                'assets/images/r1.png'),
                          ),
                        ),
                      ),
                       const Text(
                        AppStrings.result,
                        style: TextStyle(fontSize: 18),
                      ),
                      SizedBox(
                        height: kHeight(context) * 0.02,
                      ),
                      const Text(
                        AppStrings.bengin,
                        style: TextStyle(
                            fontSize: 22,
                            color: Colors.green,
                            fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          const Expanded(child: SizedBox()),
                          // Spacer(),
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20),
                              child: Text(
                                AppStrings.cancel,
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
      animation: true,
      center:  Image.asset('assets/images/progress1.jpg'),
    );
  }
}
