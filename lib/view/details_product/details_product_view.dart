import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skill_test/Res/assets/app_assets.dart';
import 'package:skill_test/view/details_product/widgets/item_details.dart';
import 'package:skill_test/view/details_product/widgets/owner_contact_section.dart';
import 'package:skill_test/view/details_product/widgets/price_action_button.dart';
import 'package:skill_test/view/details_product/widgets/property_gallery.dart';
import '../../Res/colors/app_colors.dart';
import '../../Res/components/modify_text.dart';
import '../../viewModel/product_details/product_details_controller.dart';

class DetailsProductView extends StatelessWidget {
  final String? imageUrl;
  final String? name;
  final String? address;
  final int? bedrooms;
  final int? bathrooms;
  final double? price;

  DetailsProductView({
    super.key,
    this.imageUrl,
    this.name,
    this.address,
    this.bedrooms,
    this.bathrooms,
    this.price,
  });

  PropertyDetailsController controller = Get.put(PropertyDetailsController());

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: size.height * .02,
          children: [
            Container(
              height: size.height * 0.4,
              width: MediaQuery.sizeOf(context).width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(imageUrl!), fit: BoxFit.fill)),
              child: ItemDetails(
                  name: name,
                  address: address,
                  bedrooms: bedrooms,
                  bathrooms: bathrooms),
            ),
            ModifiedText(
              text: 'Description',
              size: 16,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
            RichText(
                text: TextSpan(children: [
              TextSpan(
                  text:
                      "The 3 level house that has a modern design, has a large pool and a garage that fits up to four cars...",
                  style: TextStyle(
                      fontFamily: 'RaleWayBold',
                      color: AppColor.darkGrey,
                      fontWeight: FontWeight.w400,
                      fontSize: 12)),
              TextSpan(
                  text: 'See More',
                  style: TextStyle(
                      fontFamily: 'RaleWayBold',
                      color: AppColor.blueShade,
                      fontWeight: FontWeight.w500,
                      fontSize: 13)),
            ])),
            OwnerContactSection(),
            ModifiedText(
              text: 'Gallery',
              size: 16,
              fontWeight: FontWeight.w500,
            ),
            PropertyGallery(),
            Container(
              width: MediaQuery.sizeOf(context).width,
              height: size.height * .16,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                    image: AssetImage(AppAssets.map), fit: BoxFit.cover),
              ),
              child: PriceActionButton(
                price: price!,
                onRentNow: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
