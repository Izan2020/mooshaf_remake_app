// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../constants/app_colors.dart';
import '../constants/app_icons.dart';

class HomeCardsMenus extends StatelessWidget {
  String title;
  String assetIcon;
  Color backgroundColor;
  HomeCardsMenus({
    Key? key,
    required this.title,
    required this.assetIcon,
    required this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 60,
          height: 60,
          margin: const EdgeInsets.only(bottom: 6),
          decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: const BorderRadius.all(Radius.circular(8))),
          child: Center(
            child: Image.asset(
              assetIcon,
              scale: 3.5,
            ),
          ),
        ),
        Text(title)
      ],
    );
  }
}

class CardReadingProgress extends StatefulWidget {
  const CardReadingProgress({super.key});

  @override
  State<CardReadingProgress> createState() => _CardReadingProgressState();
}

class _CardReadingProgressState extends State<CardReadingProgress> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 28),
      width: double.maxFinite,
      height: 120,
      decoration: const BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Stack(
          children: [
            const Align(
              alignment: Alignment.topLeft,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Reading Progress",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColors.white,
                        fontSize: 24),
                  ),
                  Text(
                    "Last read An-Najm 20",
                    style: TextStyle(
                        fontWeight: FontWeight.w300, color: AppColors.white),
                  )
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "20%",
                    style: TextStyle(
                        fontWeight: FontWeight.w300, color: AppColors.white),
                  ),
                  LinearPercentIndicator(
                    lineHeight: 8.0,
                    percent: 1.0,
                    progressColor: AppColors.white,
                  )
                ],
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: GestureDetector(
                child: const Icon(
                  AppIcons.navigateNext,
                  color: AppColors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
