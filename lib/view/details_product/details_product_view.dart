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
  final String? priceType;

  DetailsProductView({
    super.key,
    this.imageUrl,
    this.name,
    this.address,
    this.bedrooms,
    this.bathrooms,
    this.price,
    this.priceType,
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
              child: ItemDetails(
                  name: name,
                  address: address,
                  bedrooms: bedrooms,
                  bathrooms: bathrooms),
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
            ])),
            SizedBox(
              height: 21,
            ),
            OwnerContactSection(),
            SizedBox(
              height: 20,
            ),
            ModifiedText(
              text: 'Gallery',
              size: 16,
              fontWeight: FontWeight.w500,
            ),
            SizedBox(
              height: 20,
            ),
            PropertyGallery(),
            SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.sizeOf(context).width,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(image: AssetImage(AppAssets.map)),
              ),
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Positioned(
                    bottom: 20,
                    child: PriceActionButton(
                      price: price!,
                      priceType: priceType!,
                      onRentNow: () {},
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
