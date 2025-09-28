import 'package:abdelrahman875_fo21aef727586/features/qr_code/models/qr_code_model.dart';
import 'package:flutter_riverpod/legacy.dart';

class QrCodeNotifier extends StateNotifier<QrCodeModel> {
  QrCodeNotifier() : super(QrCodeModel(isFlashlight: false, scanData: ''));
  void toggleFlashlight() {
    state = state.copyWith(isFlashlight: !state.isFlashlight);
  }

  void setScanData({required String value}) {
    state = state.copyWith(scanData: value);
  }
}

final qrCodeProvider = StateNotifierProvider<QrCodeNotifier,QrCodeModel>((ref) => QrCodeNotifier());
