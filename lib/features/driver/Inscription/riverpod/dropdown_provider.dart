
import 'package:flutter_riverpod/legacy.dart';

/// Holds the open/close state for each dropdown by title
final dropdownStateProvider = StateNotifierProvider<DropdownStateNotifier, Map<String, bool>>((ref) {
  return DropdownStateNotifier();
});

class DropdownStateNotifier extends StateNotifier<Map<String, bool>> {
  DropdownStateNotifier() : super({});

  void toggle(String key) {
    state = {
      ...state,
      key: !(state[key] ?? false),
    };
  }

  bool isOpen(String key) {
    return state[key] ?? false;
  }
}
