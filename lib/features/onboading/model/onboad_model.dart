
import 'package:abdelrahman875_fo21aef727586/features/onboading/model/onboad_value_model.dart';

class OnboadModel {
  int ?index;
  OnboadContentModel? onboardContent;
  OnboadModel({this.index=0,this.onboardContent});
  OnboadModel copyWith({int? index,OnboadContentModel? onboardContent}) {
    return OnboadModel(
      index: index ?? this.index,
      onboardContent: onboardContent??this.onboardContent
    );
  }
}
