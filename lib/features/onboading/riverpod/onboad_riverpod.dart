import 'package:abdelrahman875_fo21aef727586/features/onboading/model/onboad_model.dart';

import 'package:flutter_riverpod/legacy.dart';

import '../../../core/constants/images_constants.dart';

final onboadingProvider = StateNotifierProvider<OnboadRiverpod, bool>(
  (ref) => OnboadRiverpod(),
);

class OnboadRiverpod extends StateNotifier<bool> {
  OnboadRiverpod() : super(false);
  List<OnboadModel> onboadDataList = [
    OnboadModel(
      img: ImagesConstants.onboadingImg_1,
      subTitle:
          "Collaborez avec des transporteurs adaptés à vos besoins logistiques.",
      title: 'Trouvez le bon\ntransporteur ',
    ),
    OnboadModel(
      img: ImagesConstants.onboadingImg_2,
      subTitle:
          "Créez des missions de distribution et suivez leur avancement en temps réel.",
      title: 'Gérez vos expéditions\nfacilement',
    ),
    OnboadModel(
      img: ImagesConstants.onboadingImg_3,
      subTitle:
          "Suivez vos performances logistiques\ndepuis votre tableau de bord..",
      title: 'Optimisez votre\nlogistique',
    ),
  ];
}
