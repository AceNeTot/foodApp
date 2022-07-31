import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/assets/colors.dart';
import 'package:my_app/widgets/icon_and_text.dart';

import '../widgets/big_text.dart';
import '../widgets/small_text.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({Key? key}) : super(key: key);

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.redAccent,
      height: 320,
      child: PageView.builder(
        controller: pageController,
        itemCount: 5,
        itemBuilder: (context, position) {
          return _buildPageItem(position);
        },
      ),
    );
  }

  Widget _buildPageItem(int index) {
    return Stack(
      children: [
        Container(
          height: 220,
          margin: EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: index.isEven ? Color(0xff69c5df) : Color(0xff9294cc),
            image: DecorationImage(
              image: AssetImage(
                'assets/images/food2.png',
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 120,
            margin: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
            ),
            child: Container(
              padding: EdgeInsets.only(top: 10, left: 15, right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BigText(text: "Chinese Side"),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Wrap(
                        children: List.generate(
                            5,
                            (index) => Icon(
                                  Icons.star,
                                  color: AppColors.mainColor,
                                  size: 15,
                                )),
                      ),
                      SizedBox(width: 10),
                      SmallText(text: "4.5"),
                      SizedBox(width: 10),
                      SmallText(text: "1248"),
                      SizedBox(width: 7),
                      SmallText(text: "comments"),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      IconText(
                        text: "Normal",
                        icon: Icons.circle_sharp,
                        iconColor: AppColors.yellowColor,
                      ),
                      SizedBox(width: 10),
                      IconText(
                        text: "1.7km",
                        icon: Icons.pin_drop,
                        iconColor: AppColors.mainColor,
                      ),
                      SizedBox(width: 10),
                      IconText(
                        text: "32 min",
                        icon: Icons.lock_clock,
                        iconColor: Colors.red,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
