class ParentScreenRiverPodModel {
  int selectedIndex;

  ParentScreenRiverPodModel({this.selectedIndex = 0});

  ParentScreenRiverPodModel copyWith({int? selectedIndex}) {
    return ParentScreenRiverPodModel(
      selectedIndex: selectedIndex ?? this.selectedIndex,
    );
  }
}
