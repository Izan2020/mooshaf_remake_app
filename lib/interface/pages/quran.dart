import 'package:flutter/material.dart';
import 'package:mooshaf_app/constants/app_colors.dart';

class QuranPage extends StatefulWidget {
  const QuranPage({Key? key}) : super(key: key);

  @override
  State<QuranPage> createState() => _QuranPageState();
}

class _QuranPageState extends State<QuranPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 255,
            decoration: const BoxDecoration(color: AppColors.grey),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SafeArea(
                  child: Container(
                    width: double.infinity,
                    height: 32,
                    margin: const EdgeInsets.symmetric(horizontal: 12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 12),
                          child: Icon(
                            Icons.search,
                            size: 22,
                          ),
                        ),
                        Text("Search"),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 262,
                  margin: const EdgeInsets.all(22),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Maheer Al Muaiqly",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 28,
                          color: AppColors.white,
                        ),
                      ),
                      Text(
                        "ماهر بن حمد المعيقلي",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: AppColors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            margin: const EdgeInsets.all(4),
                            child: const Text('1')),
                        Container(
                          margin: const EdgeInsets.only(left: 12),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Al - Fatihah',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Al - Fatihah',
                                style: TextStyle(fontWeight: FontWeight.normal),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Container(
                        margin: EdgeInsets.only(left: 26), child: Divider())
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
