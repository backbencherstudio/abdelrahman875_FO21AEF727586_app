class QrCodeModel {
  final String scanData;
  final bool isFlashlight;

  QrCodeModel({
    required this.scanData,
    required this.isFlashlight,
  });

  QrCodeModel copyWith({
    String? scanData,
    bool? isFlashlight,
  }) {
    return QrCodeModel(
      scanData: scanData ?? this.scanData,
      isFlashlight: isFlashlight ?? this.isFlashlight,
    );
  }
}
