import 'package:flutter/material.dart';

import '../statics/data_values.dart';
import '../statics/key_holders.dart';
import '../theme/app_theme.dart';
import '../widgets/container_card.dart';
import '../widgets/container_banner.dart';
import '../widgets/frame_title.dart';

class DS6Portfolio extends StatelessWidget {
  const DS6Portfolio({Key? key}) : super(key: key);

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
                animation: "portfolio",
                description: DataValues.portfolioDescription),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: ContainerCard().type5(
                    image: 'animo',
                    link: 'https://github.com/azzouzin',
                    title: DataValues.project1Title,
                    description: DataValues.project1Descreption,
                  ),
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                Expanded(
                  child: ContainerCard().type5(
                    image: 'adh',
                    link: 'https://github.com/azzouzin',
                    title: DataValues.project2Title,
                    description: DataValues.project2Descreption,
                  ),
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                Expanded(
                  child: ContainerCard().type5(
                    image: 'drAdd',
                    title: DataValues.project3Title,
                    link: 'https://github.com/azzouzin',
                    description: DataValues.project3Descreption,
                  ),
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                Expanded(
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
