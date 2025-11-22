class TrackingStep {
  final String date;
  final String title;
  final String description;
  final bool isCompleted;
  final bool isCurrent;

  TrackingStep({
    required this.date,
    required this.title,
    required this.description,
    this.isCompleted = false,
    this.isCurrent = false,
  });
}

final trackingSteps = [
  TrackingStep(
    date: "20 Sept",
    title: "Livré avec Succès",
    description: "Votre colis a bien été livré par le livreur UPS.",
    isCompleted: false,
    isCurrent: false,
  ),
  TrackingStep(
    date: "19 Sept",
    title: "En transit",
    description:
        "Le colis est actuellement en cours d’acheminement vers Lille.",
    isCurrent: true,
    isCompleted: true,
  ),

  TrackingStep(
    date: "18 Sept",
    title: "Confirmation d’enlèvement",
    description: "Le livreur a bien récupéré le colis à Ermont.",
    isCompleted: true,
  ),

  TrackingStep(
    date: "17 Sept",
    title: "Colis scanné",
    description: "Votre colis a été scanné et est prêt à être enlevé.",
    isCompleted: true,
  ),

  TrackingStep(
    date: "17 Sept",
    title: "Mission ouverte",
    description: "La mission Ermont - Lille a bien été créée.",
    isCompleted: true,
  ),
];
