import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class GanerateQr extends StatefulWidget {
  GanerateQr({super.key});

  @override
  State<GanerateQr> createState() => _GanerateQrState();
}

class _GanerateQrState extends State<GanerateQr> {
  TextEditingController urlcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Generator QR ' ,style: TextStyle(color: Colors.white),),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 250,),
              if (urlcontroller.text.isNotEmpty)
                QrImageView(
                  data: urlcontroller.text,
                  size: 100,
                ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: TextField(
                  controller: urlcontroller,
                  decoration: InputDecoration(
                      hintText: 'Enter your data ',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),

                        ) ,

                  ),
                ),
              )
              ,
              SizedBox(height: 15,),
              ElevatedButton(onPressed: (){setState(() {

              });}, child: Text('Ganerate QR code '))
            ],
          ),
        ),
      ),
    );
  }
}
