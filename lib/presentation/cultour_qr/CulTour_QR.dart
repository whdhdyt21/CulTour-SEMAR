// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: deprecated_member_use, avoid_print, unused_element, file_names

import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CulTour_QR extends StatelessWidget {
  const CulTour_QR({Key? key}) : super(key: key);

@override
Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: const Color(0xFFAA8B56),
    body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(top: 20),
              height: 150,
              width: 150,
              child: Image.asset("../assets/GrupLogo.png"),
            ),
          //const SizedBox(height: 50),
            RichText(
              textAlign: TextAlign.center,
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: 'CulTour QR',
                    style: TextStyle(
                      color: Color(0xFF3D2309),
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(
                'Scan QR Code untuk Informasi Keindahan dan Sejarahnya!',
                style: TextStyle(
                  color: Color(0xFF3D2309),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 25),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const QRViewExample(),
                ));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF3D2309),
                minimumSize: const Size(170.0, 60.0),
                textStyle: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Roboto-Bold',
                  fontSize: 16, // Menggunakan nama font yang didefinisikan di pubspec.yaml
                ),
              ),
              child: const Text('Mulai Scan QR'),
            ),
          ],
        ),
      ),
  );
}

}

class QRViewExample extends StatefulWidget {
  const QRViewExample({super.key});

  @override
  State<StatefulWidget> createState() => _QRViewExampleState();
}

class _QRViewExampleState extends State<QRViewExample> {
  Barcode? result;
  QRViewController? controller;
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  bool isCameraPaused = false;

  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller!.pauseCamera();
    }
    controller!.resumeCamera();
  }

  void _showOpenWebsiteDialog(String? url) async {
    if (url == null) {
      // Handle null value, misalnya dengan menampilkan pesan kesalahan.
      print("Error: QR code URL is null.");
      return;
    }

    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Buka di Browser?"),
          content: const Text(
              "Anda berhasil memindai QR code. Apakah Anda ingin membuka link di browser?"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context); // Tutup AlertDialog
              },
              child: const Text("Tidak"),
            ),
            TextButton(
              onPressed: () async {
                Navigator.pop(context); // Tutup AlertDialog
                // Buka link di browser jika dapat dilakukan
                if (await canLaunch(url)) {
                  await launch(url);
                } else {
                  // Tampilkan pesan toast jika tidak dapat membuka link
                  Fluttertoast.showToast(
                    msg: "Gagal membuka link di browser.",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                    backgroundColor: Colors.red,
                    textColor: Colors.white,
                  );
                }
              },
              child: const Text("Ya"),
            ),
          ],
        );
      },
    );
  }

  void _launchURL(String url) async {
    Uri uri = Uri.parse(url);

    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $url';
    }
  }

@override
Widget build(BuildContext context) {
  return Scaffold(
    body: Column(
      children: <Widget>[
        const SizedBox(height: 30),
        Expanded(flex: 6, child: _buildQrView(context)),
        Expanded(
          flex: 2,
          child: FittedBox(
            fit: BoxFit.contain,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                const SizedBox(
                  height: 15.0, // Sesuaikan jarak sesuai kebutuhan
                  child: Text(
                    'Arahkan kamera pada barcode',
                    style: TextStyle(
                      // ignore: unnecessary_const
                      color: const Color(0xFFAA8B56),
                      fontSize: 15, // Sesuaikan ukuran teks sesuai kebutuhan
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    _buildIconButton(
                      onPressed: () async {
                        await controller?.toggleFlash();
                        setState(() {});
                      },
                      // ignore: unrelated_type_equality_checks
                      icon: controller?.getFlashStatus() == true
                          ? FontAwesomeIcons.solidLightbulb
                          : FontAwesomeIcons.lightbulb,
                    ),
                    _buildIconButton(
                      onPressed: () async {
                        await controller?.flipCamera();
                        setState(() {});
                      },
                      icon: FontAwesomeIcons.exchangeAlt,
                    ),
                    _buildIconButton(
                      onPressed: () async {
                        if (isCameraPaused) {
                          await controller?.resumeCamera();
                        } else {
                          await controller?.pauseCamera();
                        }
                        setState(() {
                          isCameraPaused = !isCameraPaused;
                        });
                      },
                      icon: isCameraPaused
                          ? FontAwesomeIcons.play
                          : FontAwesomeIcons.pause,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}


  Widget _buildIconButton(
      {required VoidCallback onPressed, required IconData icon}) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF3D2309),
          padding: const EdgeInsets.all(7), // Sesuaikan ruang di sekitar icon
        ),
        child: Icon(
          icon,
          color: const Color(0xFFAA8B56),
          size: 22, // Sesuaikan ukuran icon
        ),
      ),
    );
  }

Widget _buildQrView(BuildContext context) {
  double screenWidth = MediaQuery.of(context).size.width;
  double screenHeight = MediaQuery.of(context).size.height;

  // Menghitung nilai border berdasarkan ukuran layar
  double borderLength = (screenWidth < 400 || screenHeight < 400) ? 60.0 : 120.0;
  double borderWidth = (screenWidth < 400 || screenHeight < 400) ? 10.0 : 20.0;
  double borderRadius = (screenWidth < 400 || screenHeight < 400) ? 10.0 : 20.0;

  return Padding(
    padding: const EdgeInsets.only(bottom: 6), // Tambahkan padding di sini
    child: QRView(
      key: qrKey,
      onQRViewCreated: _onQRViewCreated,
      overlay: QrScannerOverlayShape(
        borderColor: const Color(0xFF3D2309), // Ubah warna border
        borderRadius: borderRadius,
        borderLength: borderLength,
        borderWidth: borderWidth,
        cutOutSize: 270.0, // Atur ukuran cutout sesuai kebutuhan Anda
      ),
      onPermissionSet: (ctrl, p) => _onPermissionSet(context, ctrl, p),
    ),
  );
}

void _onQRViewCreated(QRViewController controller) {
  setState(() {
    this.controller = controller;
  });
  
  controller.scannedDataStream.listen((scanData) async {
    setState(() {
      result = scanData;
    });
          // Setelah berhasil memindai QR code, tampilkan AlertDialog
      if (result != null) {
        _showOpenWebsiteDialog(result!.code);
      }
  });
}

  void _onPermissionSet(BuildContext context, QRViewController ctrl, bool p) {
    log('${DateTime.now().toIso8601String()}_onPermissionSet $p');
    if (!p) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('no Permission')),
      );
    }
  }
  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}