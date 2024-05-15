import 'package:flutter/material.dart';
import 'package:qr_scanner/GenerateQrCode.dart';
import 'package:qr_scanner/ScanQrCode.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false ,
      title: 'QR Code Scanner and Generator ',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('QR Scanner Flutter aplacation' , style: TextStyle(color: Colors.white),),
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 350,),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => ScanQrCode()));
                    });
                  },
                  child: Text('Scan Qr code ')),
              SizedBox(height: 10,) ,
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => GanerateQr()));
                  },
                  child: Text(' Generate  code ')),
            ],
          ),
        ),
      ),
    );
  }
}
