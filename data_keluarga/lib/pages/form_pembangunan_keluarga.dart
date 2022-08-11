import 'package:d_view/d_view.dart';
import 'package:flutter/material.dart';

class FormPembangunanKeluarga extends StatelessWidget {
  const FormPembangunanKeluarga({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DView.appBarLeft('Form Pembangunan Keluarga'),
      body: SafeArea(
        child: Column(),
      ),
    );
  }
}