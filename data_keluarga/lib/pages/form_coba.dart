import 'package:d_view/d_view.dart';
import 'package:data_keluarga/config/AppColor.dart';
import 'package:flutter/material.dart';
import 'package:dropdown_selection/dropdown_selection.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FormCoba extends StatefulWidget {
  @override
  State<FormCoba> createState() => _FormCobaState();
}

class _FormCobaState extends State<FormCoba> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DView.appBarLeft('Form Pembangunan Keluarga'),
      body: SafeArea(
        child: Center(
          child: Text('SELESAI', ),
        )
        ),
      );
  }
}
