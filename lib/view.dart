import 'package:flutter/material.dart';
// import 'package:mobile_scanner/mobile_scanner.dart/';
class ViewImg extends StatefulWidget {
  const ViewImg({Key? key}) : super(key: key);

  @override
  State<ViewImg> createState() => _ViewImgState();
}

class _ViewImgState extends State<ViewImg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      body: Column(
        children: [
          // MobileScanner(
          //   // fit: BoxFit.contain,
          //   controller: MobileScannerController(
          //     detectionSpeed: DetectionSpeed.normal,
          //     facing: CameraFacing.front,
          //     torchEnabled: true,
          //   ),
          //   onDetect: (capture) {
          //     final List<Barcode> barcodes = capture.barcodes;
          //     // final Uint8List? image = capture.image;
          //     for (final barcode in barcodes) {
          //       debugPrint('Barcode found! ${barcode.rawValue}');
          //     }
          //   },
          // ),

        ],
      ),
    );
  }
}
