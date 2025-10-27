import 'package:flutter_riverpod/legacy.dart';

// State class to hold the isOpen state for each dropdown
class DropdownState {
  final Map<String, bool> isOpenMap;

  DropdownState(this.isOpenMap);

  DropdownState copyWith({Map<String, bool>? isOpenMap}) {
    return DropdownState(isOpenMap ?? this.isOpenMap);
  }
}

// StateNotifier to manage dropdown states
class DropdownStateNotifier extends StateNotifier<DropdownState> {
  DropdownStateNotifier() : super(DropdownState({}));

  void toggle(String title) {
    final newMap = Map<String, bool>.from(state.isOpenMap);
    newMap[title] = !(newMap[title] ?? false);
    state = state.copyWith(isOpenMap: newMap);
  }
}


// Provider for the DropdownStateNotifier
final dropdownStateProvider =
    StateNotifierProvider<DropdownStateNotifier, DropdownState>(
      (ref) => DropdownStateNotifier(),
    );
