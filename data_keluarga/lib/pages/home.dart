import 'package:data_keluarga/pages/form-alamat2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text(
            'Isi Formulir'
          ),
          onPressed: (){
            Get.to(FormAlamat2());
          },
        ),
      ),
    );
  }
}