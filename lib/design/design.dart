import 'package:design/theme/app_Image.dart';
import 'package:design/theme/app_string.dart';
import 'package:design/widget/customtext.dart';
import 'package:flutter/material.dart';

import '../utils/size_utils.dart';

class DesignDemo extends StatefulWidget {
  const DesignDemo({Key? key}) : super(key: key);

  @override
  State<DesignDemo> createState() => _DesignDemoState();
}

class _DesignDemoState extends State<DesignDemo> {
  @override
  Widget build(BuildContext context) {
    SizeUtils().init(context);

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Row(
              children: [
                Stack(
                  children: [
                    Image.asset(
                      AppImage.triangle,
                      width: SizeUtils.verticalBlockSize * 50,
                    ),
                    Positioned(top: SizeUtils.horizontalBlockSize*82,
                      left: SizeUtils.verticalBlockSize * 17,
                      child: Container(
                        child: Image.asset(
                          AppImage.deltra,
                          width: SizeUtils.verticalBlockSize * 5,
                          height: SizeUtils.horizontalBlockSize * 5,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Positioned(
                      top: SizeUtils.horizontalBlockSize * 82,
                      left: SizeUtils.verticalBlockSize * 22,
                      child: AppText(
                        text: AppString.deltra,
                        fontSize: SizeUtils.fSize_19(),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Positioned(
                      top: SizeUtils.horizontalBlockSize * 90,
                      left: SizeUtils.verticalBlockSize * 9,
                      child: AppText(
                        text: AppString.thecrypto,
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Stack(
                  children: [
                    Container(
                      width: SizeUtils.verticalBlockSize * 49,
                      height: SizeUtils.horizontalBlockSize * 93,
                      child: Image(
                        image: AssetImage(AppImage.chex),
                        fit: BoxFit.fill,
                      ),
                    ),
                    Positioned(
                      bottom: SizeUtils.horizontalBlockSize * 45,
                      left: SizeUtils.horizontalBlockSize * 29,
                      child: AppText(
                        text: AppString.letsGetStarted,
                        fontSize: SizeUtils.fSize_19(),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Positioned(
                      bottom: SizeUtils.horizontalBlockSize * 40,
                      left: SizeUtils.horizontalBlockSize * 15,
                      child: AppText(
                        text: AppString.ametMinim,
                        fontSize: SizeUtils.fSize_13(),
                      ),
                    ),
                    Positioned(
                      bottom: SizeUtils.horizontalBlockSize * 35,
                      left: SizeUtils.horizontalBlockSize * 30,
                      child: AppText(
                        text: AppString.aliquaDolor,
                        fontSize: SizeUtils.fSize_13(),
                      ),
                    ),
                    Positioned(
                      bottom: SizeUtils.verticalBlockSize * 8,
                      child: GestureDetector(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: SizeUtils.horizontalBlockSize * 6),
                          child: Container(
                            alignment: Alignment.center,
                            child: AppText(
                              text: AppString.login,
                              color: Colors.black,
                            ),
                            height: SizeUtils.horizontalBlockSize * 12,
                            width: SizeUtils.verticalBlockSize * 20,
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(8)),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: SizeUtils.verticalBlockSize * 8,
                      left: SizeUtils.verticalBlockSize * 24,
                      child: GestureDetector(
                        onTap: () {},
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: SizeUtils.horizontalBlockSize * 6),
                          child: Container(
                            alignment: Alignment.center,
                            child: AppText(
                              text: AppString.register,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                            height: SizeUtils.horizontalBlockSize * 12,
                            width: SizeUtils.verticalBlockSize * 20,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(8)),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
