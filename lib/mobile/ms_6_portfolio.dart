import 'package:flutter/material.dart';

import '../statics/data_values.dart';
import '../statics/key_holders.dart';
import '../theme/app_theme.dart';
import '../widgets/container_card.dart';
import '../widgets/container_banner.dart';
import '../widgets/frame_title.dart';

class MS6Portfolio extends StatelessWidget {
  const MS6Portfolio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      key: KeyHolders.portfolioKey,
      color: AppThemeData.backgroundGrey,
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const FrameTitle(
                title: DataValues.portfolioTitle,
                description: DataValues.portfolioDescription),
            Column(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 500,
                  child: ContainerCard().type5(
                    image: 'animo',
                    link: DataValues.project4Link,
                    title: DataValues.project1Title,
                    description: DataValues.project1Descreption,
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.width * 0.05),
                SizedBox(
                  height: 500,
                  child: ContainerCard().type5(
                    image: 'adh',
                    link: DataValues.project4Link,
                    title: DataValues.project2Title,
                    description: DataValues.project2Descreption,
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.width * 0.05),
                SizedBox(
                  height: 500,
                  child: ContainerCard().type5(
                    image: 'drAdd',
                    link: DataValues.project4Link,
                    title: DataValues.project3Title,
                    description: DataValues.project3Descreption,
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.width * 0.05),
                SizedBox(
                  height: 500,
                  child: ContainerCard().type5(
                    image: 'iamPack',
                    title: DataValues.project4Title,
                    link: DataValues.project4Link,
                    description: DataValues.project4Descreption,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 80.0),
            Center(
              child: ContainerBanner().type1(
                isDesktop: true,
                title1: DataValues.experienceBanner,
                title2: DataValues.experienceBannerTitle,
                description: DataValues.experienceBannerWeb,
                image: 'logo',
                message: 'View Toolkit',
                url: Uri.parse("https://github.com/azzouzin"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
