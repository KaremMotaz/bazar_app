import '../../../../core/theming/app_assets.dart';
import '../models/vendor_model.dart';

class VendorsMock {
  static const List<VendorModel> vendors = [
    VendorModel(name: "Warehouse", image: AppAssets.vendor1, rate: 3),
    VendorModel(name: "Kuromi", image: AppAssets.vendor2, rate: 4),
    VendorModel(name: "GooDay", image: AppAssets.vendor3, rate: 5),
    VendorModel(name: "Crane & Co", image: AppAssets.vendor4, rate: 4),
    VendorModel(name: "Lucky", image: AppAssets.vendor5, rate: 4),
  ];
}
