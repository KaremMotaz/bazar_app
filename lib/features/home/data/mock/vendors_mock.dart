import '../../../../core/theming/app_assets.dart';
import '../models/vendor_model.dart';

class VendorsMock {
  static const List<VendorModel> vendors = [
    VendorModel(name: "Warehouse", image: AppAssets.vendor1, rating: 3),
    VendorModel(name: "Kuromi", image: AppAssets.vendor2, rating: 4),
    VendorModel(name: "GooDay", image: AppAssets.vendor3, rating: 5),
    VendorModel(name: "Crane & Co", image: AppAssets.vendor4, rating: 4),
    VendorModel(name: "Lucky", image: AppAssets.vendor5, rating: 4),
    VendorModel(name: "Wattpad", image: AppAssets.vendor6, rating: 3),
    VendorModel(name: "Peppa Pig", image: AppAssets.vendor7, rating: 3),
    VendorModel(name: "Jstor", image: AppAssets.vendor8, rating: 5),
    VendorModel(name: "Peloton", image: AppAssets.vendor9, rating: 4),
    VendorModel(name: "Haymarket", image: AppAssets.vendor10, rating: 4),
  ];
}
