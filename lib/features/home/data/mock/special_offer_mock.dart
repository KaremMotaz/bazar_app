import 'package:bazar_app/core/theming/app_assets.dart';
import 'package:bazar_app/features/home/data/models/special_offer_model.dart';

class SpecialOfferMock {
  static const List<SpecialOfferModel> specialOffers = [
    SpecialOfferModel(image: AppAssets.specialOffer1, discount: 25),
    SpecialOfferModel(image: AppAssets.specialOffer2, discount: 50),
    SpecialOfferModel(image: AppAssets.specialOffer1, discount: 30),
  ];
}
