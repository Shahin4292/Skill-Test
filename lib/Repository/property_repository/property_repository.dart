import 'package:skill_test/Res/assets/app_assets.dart';

import '../../Model/property/property_model.dart';

class PropertyRepository {
  List<Property> getNearProperties() {
    return [
      Property(
        name: 'Dreamsville House',
        address: 'Jl Sultan Iskandar Muda',
        imageUrl: AppAssets.dreamsVille,
        price: 0,
        priceType: '',
        bedrooms: 4,
        bathrooms: 3,
        distance: 1.8,
      ),
      Property(
        name: 'Ascot House',
        address: 'Jl Cilandak Tengah',
        imageUrl: AppAssets.dreamsVille,
        price: 0,
        priceType: '',
        bedrooms: 3,
        bathrooms: 2,
        distance: 2.1,
      ),
    ];
  }

  List<Property> getBestForYouProperties() {
    return [
      Property(
        name: 'Orchard House',
        address: 'Jl Sukarno Hatta',
        imageUrl: 'https://via.placeholder.com/150',
        price: 2500000000,
        priceType: 'Year',
        bedrooms: 6,
        bathrooms: 4,
        distance: 0,
      ),
      Property(
        name: 'The Hollies House',
        address: 'Jl Kemang Raya',
        imageUrl: 'https://via.placeholder.com/150',
        price: 2000000000,
        priceType: 'Year',
        bedrooms: 5,
        bathrooms: 2,
        distance: 0,
      ),
    ];
  }
}
