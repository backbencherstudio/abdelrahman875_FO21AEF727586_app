
import 'package:flutter_riverpod/legacy.dart';

final customerNavBarProvider =
    StateNotifierProvider<CustomerNavBarViewModel, int>(
      (ref) => CustomerNavBarViewModel(),
    );

class CustomerNavBarViewModel extends StateNotifier<int> {
  CustomerNavBarViewModel() : super(0);
 void onTabIndex(int index) {
    state = index;
  }
}
