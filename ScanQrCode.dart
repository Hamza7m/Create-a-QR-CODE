import 'package:flutter/material.dart' ;
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class ScanQrCode extends StatefulWidget {
  const ScanQrCode({super.key});

  @override
  State<ScanQrCode> createState() => _ScanQrCodeState();
}

class _ScanQrCodeState extends State<ScanQrCode> {
  String qrResult = 'Scanner Data will Appear Here '  ;

  Future<void> scanQR ()async{
    try{
      final qrCode = FlutterBarcodeScanner.scanBarcode('#ff6666', 'cancel', true , ScanMode.QR);
      if(!mounted)return  ;
      qrResult = qrCode.toString() ;

    }on PlatformException{
  qrResult  = 'faild to read QR Code ';
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('QR Scanner ' , style: TextStyle(color: Colors.white),),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 30) ,
            Text('$qrResult   ', style: TextStyle(color: Colors.blue),),
            SizedBox(height: 30,) , 
            ElevatedButton(onPressed: (){setState(() {

            });} , child: Text("Generate Qr Code "))
          ],
        ),
      ),
    ) ; 
  }
}
