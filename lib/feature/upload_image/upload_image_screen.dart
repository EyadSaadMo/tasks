import 'package:flutter/material.dart';
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
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: kHeight(context) * 0.2,
            ),
            Container(
              width: 200,
              height: 200,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: const DecorationImage(
                      image: AssetImage('assets/images/fImage.png'))),
            ),
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
                style: TextStyle(fontSize: 16, color: ColorManager.kgreyColor),
              ),
            ),
            const Expanded(child: SizedBox()),
            SizedBox(
              child: MainButton(
                  widget: Row(
                    children: [
                      Icon(
                        Icons.upload_file_sharp,
                        color: ColorManager.kWhiteColor,
                      ),
                      SizedBox(
                        width: kWidth(context) * 0.02,
                      ),
                      Text(AppStrings.upload)
                    ],
                  ),
                  onPressed: () {}),
            ),
          ],
        ),
      ),
    );
  }
}
