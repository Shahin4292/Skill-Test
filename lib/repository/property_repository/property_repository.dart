import 'package:skill_test/Res/assets/app_assets.dart';

import '../../Model/property/property_model.dart';

class PropertyRepository {
  List<Property> getNearProperties() {
    return [
      Property(
        name: 'Dreamsville House',
        address: 'Jl Sultan Iskandar Muda',
        imageUrl: AppAssets.dreamsVille,
        price: 2500000000,
        priceType:'Jl. Sultan Iskandar Muda, Jakarta selatan',
        bedrooms: 6,
        bathrooms: 4,
        distance: 1.8,
      ),
      Property(
        name: 'Ascot House',
        address: 'Jl Cilandak Tengah',
        imageUrl: AppAssets.dreamsVille,
        price: 2000000000,
        priceType: 'Jl Cilandak Tengah, Jakarta selatan',
        bedrooms: 5,
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
        imageUrl: AppAssets.orchadHouse,
        price: 2500000000,
        priceType: 'Year',
        bedrooms: 6,
        bathrooms: 4,
        distance: 0,
      ),
      Property(
        name: 'The Hollies House',
        address: 'Jl Kemang Raya',
        imageUrl: AppAssets.holliesHouse,
        price: 2000000000,
        priceType: 'Year',
        bedrooms: 5,
        bathrooms: 2,
        distance: 0,
      ),
      Property(
        name: 'Sea Breezes House',
        address: 'Jl Sukarno Hatta',
        imageUrl: AppAssets.breezesHouse,
        price: 900000000,
        priceType: 'Year',
        bedrooms: 2,
        bathrooms: 2,
        distance: 0,
      ),
    ];
  }
}
