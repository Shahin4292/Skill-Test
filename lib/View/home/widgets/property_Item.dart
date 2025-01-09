import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../Model/property/property_model.dart';
import '../../../Res/assets/app_assets.dart';
import '../../../Res/colors/app_colors.dart';
import '../../../Res/components/modify_text.dart';

class PropertyItem extends StatelessWidget {
  final Property property;

  const PropertyItem({required this.property});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 272,
      width: 222,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(property.imageUrl), fit: BoxFit.fill)),
      child: Stack(
        children: [
          Positioned(
            top: 20,
            right: 16,
            child: Container(
              height: 24,
              width: 73,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: AppColor.cyan,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    AppAssets.locationsIcon,
                    height: 16,
                    width: 16,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  ModifiedText(
                    text: '${property.distance.toStringAsFixed(1)} km',
                    size: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 20,
            bottom: 40,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ModifiedText(
                  text: property.name,
                  size: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
                SizedBox(
                  height: 8,
                ),
                ModifiedText(
                  text: property.address,
                  size: 12,
                  color: AppColor.lightGrey,
                  fontWeight: FontWeight.w400,
                ),
              ],
            ),
          ),
        ],
      ),
    );
    // return Card(
    //   elevation: 2,
    //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    //   child: Column(
    //     crossAxisAlignment: CrossAxisAlignment.start,
    //     children: [
    //       ClipRRect(
    //         borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
    //         child: Image.network(
    //           property.imageUrl,
    //           height: 272,
    //           width: double.infinity,
    //           fit: BoxFit.cover,
    //         ),
    //       ),
    //       Padding(
    //         padding: const EdgeInsets.all(8.0),
    //         child: Column(
    //           crossAxisAlignment: CrossAxisAlignment.start,
    //           children: [
    //             if (property.distance > 0)
    //               Text('${property.distance.toStringAsFixed(1)} km',
    //                   style: TextStyle(fontSize: 12, color: Colors.grey)),
    //             Text(property.name,
    //                 style:
    //                     TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
    //             Text(property.address,
    //                 style: TextStyle(fontSize: 14, color: Colors.grey)),
    //             if (property.price > 0)
    //               Text(
    //                 'Rp ${property.price.toStringAsFixed(0)} / ${property.priceType}',
    //                 style: TextStyle(
    //                     fontSize: 14,
    //                     fontWeight: FontWeight.bold,
    //                     color: Colors.blue),
    //               ),
    //             if (property.bedrooms > 0 && property.bathrooms > 0)
    //               Row(
    //                 children: [
    //                   Icon(Icons.king_bed_outlined, size: 16),
    //                   SizedBox(width: 4),
    //                   Text('${property.bedrooms} Bedroom'),
    //                   SizedBox(width: 8),
    //                   Icon(Icons.bathtub_outlined, size: 16),
    //                   SizedBox(width: 4),
    //                   Text('${property.bathrooms} Bathroom'),
    //                 ],
    //               ),
    //           ],
    //         ),
    //       ),
    //     ],
    //   ),
    // );
  }
}
