import 'package:abdelrahman875_fo21aef727586/features/onboading/model/onboad_model.dart';
import 'package:abdelrahman875_fo21aef727586/features/onboading/model/onboad_value_model.dart';

import 'package:flutter_riverpod/legacy.dart';

import '../../../core/constants/images.dart';

final onboadingProvider = StateNotifierProvider<OnboadRiverpod, OnboadModel>(
  (ref) => OnboadRiverpod(),
);

class OnboadRiverpod extends StateNotifier<OnboadModel> {
  OnboadRiverpod() : super(OnboadModel());

  List<OnboadContentModel> onboadDataList = [
    OnboadContentModel(
      img: AppImages.onboadingImg_1,
      subTitle:
          "Collaborez avec des transporteurs\nadaptés à vos besoins logistiques.",
      title: 'Trouvez le bon\ntransporteur ',
    ),
    OnboadContentModel(
      img: AppImages.onboadingImg_2,
      subTitle:
          "Créez des missions de distribution et\nsuivez leur avancement en temps réel.",
      title: 'Gérez vos expéditions\nfacilement',
    ),
    OnboadContentModel(
      img: AppImages.onboadingImg_3,
      subTitle:
          "Suivez vos performances logistiques\ndepuis votre tableau de bord.",
      title: 'Optimisez votre\nlogistique',
    ),
  ];

  void indexChange(int value) {
    state = state.copyWith(index: value); //  update state
  }
}
