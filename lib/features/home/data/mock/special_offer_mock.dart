import '../../../../core/theming/app_assets.dart';
import '../models/special_offer_model.dart';

class SpecialOfferMock {
  static const List<SpecialOfferModel> specialOffers = [
    SpecialOfferModel(image: AppAssets.specialOffer1, discount: 25),
    SpecialOfferModel(image: AppAssets.specialOffer2, discount: 50),
    SpecialOfferModel(image: AppAssets.specialOffer1, discount: 30),
  ];
}
