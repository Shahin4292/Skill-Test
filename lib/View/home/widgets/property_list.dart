import 'package:flutter/material.dart';

import '../../../Model/property/property_model.dart';

class PropertyList extends StatelessWidget {
  final Property property;

  const PropertyList({super.key, required this.property});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 70,
          width: 74,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
                image: NetworkImage(property.imageUrl), fit: BoxFit.cover),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(property.name),
            Text(
              'Rp ${property.price.toStringAsFixed(0)} / ${property.priceType}',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            ),
            Row(
              children: [
                Icon(Icons.king_bed_outlined, color: Colors.red, size: 16),
                SizedBox(width: 4),
                Text('${property.bedrooms} Bedroom'),
                SizedBox(width: 8),
                Icon(Icons.bathtub_outlined, size: 16),
                SizedBox(width: 4),
                Text(
                  '${property.bathrooms} Bathroom',
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
