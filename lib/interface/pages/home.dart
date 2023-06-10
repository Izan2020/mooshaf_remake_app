import 'package:flutter/material.dart';
import 'package:mooshaf_app/constants/app_colors.dart';
import 'package:mooshaf_app/constants/app_images.dart';
import 'package:mooshaf_app/widgets/home_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                width: double.infinity,
                height: 260,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(AppImages.imageMountain),
                        fit: BoxFit.fitWidth)),
                child: const Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'ZUHUR',
                        style: TextStyle(
                            color: AppColors.white,
                            fontWeight: FontWeight.w300),
                      ),
                      Text(
                        '11:00',
                        style: TextStyle(
                            color: AppColors.white,
                            fontSize: 44,
                            fontWeight: FontWeight.w800),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 180),
                  child: CardReadingProgress(),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 32),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 22),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            HomeCardsMenus(
                                title: 'Kajian',
                                assetIcon: AppImages.iconKiblat,
                                backgroundColor: AppColors.iconBlue),
                            HomeCardsMenus(
                                title: 'Doa-Doa',
                                assetIcon: AppImages.iconSholat,
                                backgroundColor: AppColors.iconOrange),
                            HomeCardsMenus(
                                title: 'Masjid',
                                assetIcon: AppImages.iconKalender,
                                backgroundColor: AppColors.iconRed),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 22),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 22),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            HomeCardsMenus(
                                title: 'Kajian',
                                assetIcon: AppImages.iconKajian,
                                backgroundColor: AppColors.iconGray),
                            HomeCardsMenus(
                                title: 'Doa-Doa',
                                assetIcon: AppImages.iconDoaDoa,
                                backgroundColor: AppColors.iconOrange2),
                            HomeCardsMenus(
                                title: 'Masjid',
                                assetIcon: AppImages.iconMasjid,
                                backgroundColor: AppColors.iconYellow),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
