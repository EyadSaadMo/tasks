import 'package:flutter/material.dart';
import 'package:test1/core/colors/colors.dart';
import 'package:test1/feature/upload_image/presentation/widgets/dialoge.dart';
import '../../../../core/utilities/media_query.dart';
import '../../../../core/utilities/strings.dart';

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
                      image: AssetImage('assets/images/fImage.png'),
                  ),
              ),
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
              const SizedBox(
                width: 180,
                child: Text(
                  AppStrings.uploadImage,
                  style:
                      TextStyle(fontSize: 16, color: ColorManager.kGreyColor),
                ),
              ),
            ],
          ),
          const Expanded(child: SizedBox()),
          InkWell(
            onTap: () {
              showDialog(
                context: context,
                builder: ((context) => const Dialogue()
                ),
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
                  const Icon(
                    Icons.upload_sharp,
                    color: ColorManager.kWhiteColor,
                  ),
                  SizedBox(
                    width: kWidth(context) * 0.02,
                  ),
                  const Text(
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
