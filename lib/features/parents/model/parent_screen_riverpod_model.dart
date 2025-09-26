class ParentScreenRiverPodModel {
  int selectedIndex;

  ParentScreenRiverPodModel({this.selectedIndex = 2});

  ParentScreenRiverPodModel copyWith({int? selectedIndex}) {
    return ParentScreenRiverPodModel(
      selectedIndex: selectedIndex ?? this.selectedIndex,
    );
  }
}
