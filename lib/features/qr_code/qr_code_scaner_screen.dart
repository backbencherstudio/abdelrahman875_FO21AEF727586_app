import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:qr_code_scanner_plus/qr_code_scanner_plus.dart';
import 'dart:io';

import 'riverpod/qr_code_provider.dart';

class QrScannerScreen extends ConsumerStatefulWidget {
  const QrScannerScreen({super.key});

  @override
  _QrScannerScreenState createState() => _QrScannerScreenState();
}

class _QrScannerScreenState extends ConsumerState<QrScannerScreen> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  QRViewController? controller;

  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller?.pauseCamera();
    }
    controller?.resumeCamera();
  }

  @override
  Widget build(BuildContext context) {
    final qrState = ref.watch(qrCodeProvider);

    return Scaffold(
      appBar: AppBar(title: const Text("QR Scanner Plus")),
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: QRView(
              key: qrKey,
              onQRViewCreated: (ctrl) => _onQRViewCreated(ctrl, ref),
              overlay: QrScannerOverlayShape(
                borderColor: Colors.white,
                borderWidth: 10,
                cutOutSize: 300,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Center(
              child: Text(
                qrState.scanData.isEmpty
                    ? "Scan a QR code"
                    : "Scanned: ${qrState.scanData}",
                style: const TextStyle(fontSize: 18),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.bottomRight,
              child: ElevatedButton(
                onPressed: () async {
                  await controller?.toggleFlash();
                  final notifier = ref.read(qrCodeProvider.notifier);
                  notifier.toggleFlashlight();
                },
                child: Icon(
                  qrState.isFlashlight
                      ? Icons.flashlight_on
                      : Icons.flashlight_off,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _onQRViewCreated(QRViewController ctrl, WidgetRef ref) {
    controller = ctrl;
    controller?.scannedDataStream.listen((scanData) {
      final notifier = ref.read(qrCodeProvider.notifier);
      notifier.setScanData(value: scanData.code ?? "");
    });
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}
