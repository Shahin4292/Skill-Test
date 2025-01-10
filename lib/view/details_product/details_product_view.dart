import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:skill_test/Res/assets/app_assets.dart';
import 'package:skill_test/view/details_product/widgets/position_widget.dart';
import '../../Res/colors/app_colors.dart';
import '../../Res/components/modify_text.dart';
import '../../viewModel/product_details/product_details_controller.dart';

class DetailsProductView extends StatelessWidget {
  final String? imageUrl;
  final String? name;
  final String? address;
  final int? bedrooms;
  final int? bathrooms;

  DetailsProductView({
    super.key,
    this.imageUrl,
    this.name,
    this.address,
    this.bedrooms,
    this.bathrooms,
  });

  PropertyDetailsController controller = Get.put(PropertyDetailsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 319,
              width: MediaQuery.sizeOf(context).width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(imageUrl!), fit: BoxFit.fill)),
              child: Stack(
                children: [
                  PositionWidget(
                    top: 20,
                    left: 20,
                    imageIcon: AppAssets.arrowBack,
                    height: 13,
                    weight: 8,
                    onTab: () {
                      Get.back();
                    },
                  ),
                  PositionWidget(
                    top: 20,
                    right: 20,
                    imageIcon: AppAssets.saveIcon,
                    height: 15,
                    weight: 12,
                    onTab: () {},
                  ),
                  Positioned(
                    left: 20,
                    bottom: 50,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 8,
                      children: [
                        ModifiedText(
                          text: name!,
                          size: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                        ModifiedText(
                          text: '$address, Jakarta selatan',
                          size: 16,
                          color: AppColor.lightGrey,
                          fontWeight: FontWeight.w500,
                        ),
                        Row(
                          spacing: 8,
                          children: [
                            Container(
                              height: 28,
                              width: 28,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: AppColor.darkGrey,
                              ),
                              child: Center(
                                child: SvgPicture.asset(
                                  AppAssets.bedroom,
                                  height: 13,
                                  width: 16,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            ModifiedText(
                              text: '$bedrooms Bedroom',
                              size: 16,
                              color: AppColor.darkGrey,
                              fontWeight: FontWeight.w500,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Container(
                              height: 28,
                              width: 28,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: AppColor.darkGrey,
                              ),
                              child: Center(
                                child: SvgPicture.asset(
                                  AppAssets.bathroom,
                                  height: 13,
                                  width: 16,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            ModifiedText(
                              text: '$bathrooms Bathroom',
                              size: 12,
                              fontWeight: FontWeight.w400,
                              color: AppColor.darkGrey,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 21,
            ),
            ModifiedText(
              text: 'Description',
              size: 16,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
            SizedBox(
              height: 21,
            ),
            RichText(
                text: TextSpan(children: [
              TextSpan(
                  text:
                      "The 3 level house that has a modern design, has a large pool and a garage that fits up to four cars...",
                  style: TextStyle(
                      color: AppColor.darkGrey,
                      fontWeight: FontWeight.w400,
                      fontSize: 12)),
              TextSpan(
                  text: 'See More',
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w500,
                      fontSize: 12)),
            ]))
          ],
        ),
      ),
    );
  }
}
