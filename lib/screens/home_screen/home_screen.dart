import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kookit/utils/app_gaps.dart';
import 'package:kookit/utils/constants.dart';
import 'package:kookit/widgets/core_widgets.dart';
import 'package:kookit/widgets/dashboard_screen_widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final carouselController = CarouselSliderController();
  int currentPage = 0;

  final List<String> imageList = [
    "https://cdn.pixabay.com/photo/2017/12/03/18/04/christmas-balls-2995437_960_720.jpg",
    "https://cdn.pixabay.com/photo/2017/12/13/00/23/christmas-3015776_960_720.jpg",
    "https://cdn.pixabay.com/photo/2019/12/19/10/55/christmas-market-4705877_960_720.jpg",
    "https://cdn.pixabay.com/photo/2019/12/20/00/03/road-4707345_960_720.jpg",
    "https://cdn.pixabay.com/photo/2019/12/22/04/18/x-mas-4711785__340.jpg",
    "https://cdn.pixabay.com/photo/2016/11/22/07/09/spruce-1848543__340.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.fillBlueColor,
        title: appBarText('Home'),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      drawer: const CustomDrawer(),
      body: Container(
        height: Get.size.height,
        width: Get.size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color(0xFF2764A0),
            Color(0xFF1E3B5C),
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 20,
                    decoration: const BoxDecoration(
                        color: AppColors.fillBlueColor,
                        borderRadius:
                            BorderRadius.vertical(bottom: Radius.circular(16))),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    height: 50,
                    child: Form(
                      child: TextFormField(
                        textInputAction: TextInputAction.search,
                        onChanged: (value) {
                          // search
                        },
                        style:
                            const TextStyle(fontSize: 16, color: Colors.white),
                        decoration: const InputDecoration(
                          fillColor: Color(0xFF1E466E),
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                          hintText: 'Search for ...',
                          hintStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: Color(0xFFD9D9D9),
                          ),
                          filled: true,
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 16.0 * 1.5, vertical: 16.0),
                          border: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: AppColors.fillBlueColor),
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: AppColors.fillBlueColor),
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: AppColors.fillBlueColor),
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              AppGaps.hGap20,
              if (imageList.isNotEmpty)
                CarouselSlider(
                  carouselController: carouselController,
                  options: CarouselOptions(
                    enableInfiniteScroll: false,
                    enlargeCenterPage: true,
                    // autoPlay: true,
                    pauseAutoPlayInFiniteScroll: true,
                    onPageChanged: (index, reason) =>
                        setState(() => currentPage = index),
                  ),
                  items: imageList.map((image) {
                    return Container(
                      width: Get.size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: AppColors.fillBlueColor),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        clipBehavior: Clip.antiAlias,
                        child: Image.network(
                          image,
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  }).toList(),
                ),
              if (imageList.isNotEmpty) AppGaps.hGap15,
              if (imageList.isNotEmpty)
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(imageList.length, (index) {
                    if (index == currentPage) {
                      return Container(
                        // height: 30,
                        // width: 60,
                        height: 3,
                        width: 10,
                        margin: const EdgeInsets.symmetric(horizontal: 3),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      );
                    }
                    return Container(
                      height: 3,
                      width: 10,
                      margin: const EdgeInsets.symmetric(horizontal: 3),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: AppColors.fillBlueColor)),
                    );
                  }),
                ),
              AppGaps.hGap20,
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: 'Cooking Progress',
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    AppGaps.hGap15,
                    SingleCookingProgress(
                        deviceName: 'Device 1',
                        recipeName: 'Lasagne',
                        timeToCook: '20 min',
                        cookingTimeLeft: '11 min',
                        value: 0.5),
                    AppGaps.hGap20,
                    SingleCookingProgress(
                        deviceName: 'Device 2',
                        recipeName: 'Lasagne',
                        timeToCook: '20 min',
                        cookingTimeLeft: '4 min',
                        value: 0.8),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
