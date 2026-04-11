import '../../../../core/theming/app_assets.dart';
import '../models/vendor_model.dart';

class VendorsMock {
  static const List<VendorModel> vendors = [
    VendorModel(
      id: "1",
      name: "Warehouse",
      image: AppAssets.vendor1,
      rating: 3,
      category: "books",
    ),
    VendorModel(
      id: "2",
      name: "Kuromi",
      image: AppAssets.vendor2,
      rating: 4,
      category: "poems",
    ),
    VendorModel(
      id: "3",
      name: "GooDay",
      image: AppAssets.vendor3,
      rating: 5,
      category: "special",
    ),
    VendorModel(
      id: "4",
      name: "Crane & Co",
      image: AppAssets.vendor4,
      rating: 4,
      category: "stationary",
    ),
    VendorModel(
      id: "5",
      name: "Lucky",
      image: AppAssets.vendor5,
      rating: 4,
      category: "books",
    ),
    VendorModel(
      id: "6",
      name: "Wattpad",
      image: AppAssets.vendor6,
      rating: 3,
      category: "poems",
    ),
    VendorModel(
      id: "7",
      name: "Peppa Pig",
      image: AppAssets.vendor7,
      rating: 3,
      category: "special",
    ),
    VendorModel(
      id: "8",
      name: "Jstor",
      image: AppAssets.vendor8,
      rating: 5,
      category: "stationary",
    ),
    VendorModel(
      id: "9",
      name: "Peloton",
      image: AppAssets.vendor9,
      rating: 4,
      category: "books",
    ),
    VendorModel(
      id: "10",
      name: "Haymarket",
      image: AppAssets.vendor10,
      rating: 4,
      category: "poems",
    ),
  ];
}
