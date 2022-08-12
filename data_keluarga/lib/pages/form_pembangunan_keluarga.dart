import 'package:d_view/d_view.dart';
import 'package:data_keluarga/model/pembangunanKeluarga/jenisLantai.dart';
import 'package:data_keluarga/model/pembangunanKeluarga/sumberListrik.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../config/AppColor.dart';
import '../model/pembangunanKeluarga/atamRumah.dart';
import '../model/pembangunanKeluarga/bahanBakar.dart';
import '../model/pembangunanKeluarga/informasi.dart';
import '../model/pembangunanKeluarga/jenisDinding.dart';
import '../model/pembangunanKeluarga/kepemilikanRumah.dart';
import '../model/pembangunanKeluarga/media.dart';
import '../model/pembangunanKeluarga/sumberAir.dart';
import '../model/pembangunanKeluarga/wc.dart';
import 'form_coba.dart';

class FormPembangunanKeluarga extends StatefulWidget {
  const FormPembangunanKeluarga({Key? key}) : super(key: key);

  @override
  State<FormPembangunanKeluarga> createState() =>
      _FormPembangunanKeluargaState();
}

class _FormPembangunanKeluargaState extends State<FormPembangunanKeluarga> {
  final TextEditingController _typeValue19Controller = TextEditingController();
  final TextEditingController _typeValue20Controller = TextEditingController();
  final TextEditingController _typeValue21Controller = TextEditingController();
  final TextEditingController _typeValue22Controller = TextEditingController();
  final TextEditingController _typeValue23Controller = TextEditingController();
  final TextEditingController _typeValue24Controller = TextEditingController();
  final TextEditingController _typeValue27Controller = TextEditingController();
  final TextEditingController _typeValue28Controller = TextEditingController();
  final TextEditingController _typeValue29Controller = TextEditingController();
  final TextEditingController _typeValue30Controller = TextEditingController();
  final TextEditingController _typeValue31Controller = TextEditingController();
  final TextEditingController _typeValue32Controller = TextEditingController();

  final GlobalKey<FormState> _formKey8 = GlobalKey<FormState>();
  final GlobalKey<FormState> _formKey9 = GlobalKey<FormState>();
  final GlobalKey<FormState> _formKey10 = GlobalKey<FormState>();
  final GlobalKey<FormState> _formKey11 = GlobalKey<FormState>();
  final GlobalKey<FormState> _formKey12 = GlobalKey<FormState>();
  final GlobalKey<FormState> _formKey13 = GlobalKey<FormState>();
  final GlobalKey<FormState> _formKey14 = GlobalKey<FormState>();

  String selectedValue = 'Tidak';
  String selectedValue2 = 'Tidak';
  String selectedValue3a = 'Tidak';
  String selectedValue3b = 'Tidak';
  String selectedValue3c = 'Tidak';
  String selectedValue3d = 'Tidak';
  String selectedValue4 = 'Tidak';
  String selectedValue5 = 'Tidak';
  String selectedValue6 = 'Tidak';
  String selectedValue7 = 'Tidak';
  String selectedValue8 = 'Tidak';
  String selectedValue9 = 'Tidak';
  String selectedValue10 = 'Tidak';
  String selectedValue11 = 'Tidak';
  String selectedValue12 = 'Tidak';
  String selectedValue13 = 'Tidak';
  String selectedValue14 = 'Tidak';
  String selectedValue15 = 'Tidak';
  String selectedValue16 = 'Tidak';
  String selectedValue17 = 'Tidak';
  String selectedValue18a = 'Tidak';
  String selectedValue18b = 'Tidak';
  String selectedValue18c = 'Tidak';
  String selectedValue18d = 'Tidak';
  String selectedValue29 = 'Tidak';
  String selectedValue31 = 'Tidak';
  String? selectedValue19,
      selectedValue20,
      selectedValue21,
      selectedValue22,
      selectedValue23,
      selectedValue24,
      selectedValue27,
      selectedValue28,
      selectedValue30,
      selectedValue32;

  bool vS1 = true;
  bool vS2 = false;
  bool vS3 = false;
  bool vS4 = false;
  bool vS5 = false;
  bool vS6 = false;
  bool vS7 = false;
  bool vS8 = false;
  bool vS9 = false;
  bool vS10 = false;
  bool vS11 = false;
  bool vS12 = false;
  bool vS13 = false;

  bool vP30 = false;
  bool vP32 = false;

  bool vPLainnya = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DView.appBarLeft('Form Pembangunan Keluarga'),
      body: SafeArea(
          child: ListView(
        children: [
          SizedBox(
            height: 8.h,
          ),
          Visibility(
            child: slide1(context),
            visible: vS1,
          ),
          Visibility(
            child: slide2(context),
            visible: vS2,
          ),
          Visibility(
            child: slide3(context),
            visible: vS3,
          ),
          Visibility(
            child: slide4(context),
            visible: vS4,
          ),
          Visibility(
            child: slide5(context),
            visible: vS5,
          ),
          Visibility(
            child: slide6(context),
            visible: vS6,
          ),
          Visibility(
            child: slide7(context),
            visible: vS7,
          ),
          Visibility(
            child: slide8(context),
            visible: vS8,
          ),
          Visibility(
            child: slide9(context),
            visible: vS9,
          ),
          Visibility(
            child: slide10(context),
            visible: vS10,
          ),
          Visibility(
            child: slide11(context),
            visible: vS11,
          ),
          Visibility(
            child: slide12(context),
            visible: vS12,
          )
        ],
      )),
    );
  }

  Column slide1(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 8.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 5.h,
            decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5), topRight: Radius.circular(5))),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Container(
            width: MediaQuery.of(context).size.width,
            // height: 720.h,
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 7,
                  offset: Offset(0, 3))
            ], color: Colors.white),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 4.h,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 20.h,
                      ),
                      Text(
                        'Pembangunan Keluarga',
                        style: GoogleFonts.inter(
                            fontSize: 18.sp,
                            color: AppColor.textColor,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Text('Harap Mengisi form ini dengan benar'),
                      SizedBox(
                        height: 4.h,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 1.h,
                        decoration: BoxDecoration(color: Colors.grey),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      pertanyaan1(),
                      SizedBox(
                        height: 8.h,
                      ),
                      pertanyaan2(),
                      SizedBox(
                        height: 16.h,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 24.w),
                        child: Material(
                          color: Color(0XFF767AE7),
                          borderRadius: BorderRadius.circular(9),
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                vS1 = false;
                                vS2 = true;
                              });
                            },
                            borderRadius: BorderRadius.circular(8),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 12,
                              ),
                              child: Center(
                                child: Text('NEXT',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline6!
                                        .copyWith(color: Colors.white)),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 16.h,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Column slide2(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 8.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 5.h,
            decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5), topRight: Radius.circular(5))),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Container(
            width: MediaQuery.of(context).size.width,
            // height: 720.h,
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 7,
                  offset: Offset(0, 3))
            ], color: Colors.white),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 4.h,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 20.h,
                      ),
                      Text(
                        'Pembangunan Keluarga',
                        style: GoogleFonts.inter(
                            fontSize: 18.sp,
                            color: AppColor.textColor,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Text('Harap Mengisi form ini dengan benar'),
                      SizedBox(
                        height: 4.h,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 1.h,
                        decoration: BoxDecoration(color: Colors.grey),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Text(
                        'Selama 6 (enam) bulan terakhir, terdapat konflik diantara anggota keluarga:',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14.sp,
                            color: AppColor.textColor),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      pertanyaan3a(),
                      SizedBox(
                        height: 8.h,
                      ),
                      pertanyaan3b(),
                      SizedBox(
                        height: 8.h,
                      ),
                      pertanyaan3c(),
                      SizedBox(
                        height: 8.h,
                      ),
                      pertanyaan3d(),
                      SizedBox(
                        height: 16.h,
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(
                              width: 120.w,
                              child: Material(
                                color: Color(0XFF767AE7),
                                borderRadius: BorderRadius.circular(9),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      vS2 = false;
                                      vS1 = true;
                                    });
                                  },
                                  borderRadius: BorderRadius.circular(8),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 12,
                                    ),
                                    child: Center(
                                      child: Text('BACK',
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline6!
                                              .copyWith(color: Colors.white)),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 24.w,
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              width: 120.w,
                              child: Material(
                                color: Color(0XFF767AE7),
                                borderRadius: BorderRadius.circular(9),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      vS2 = false;
                                      vS3 = true;
                                    });
                                  },
                                  borderRadius: BorderRadius.circular(8),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 12,
                                    ),
                                    child: Center(
                                      child: Text('NEXT',
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline6!
                                              .copyWith(color: Colors.white)),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 16.h,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Column slide3(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 8.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 5.h,
            decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5), topRight: Radius.circular(5))),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Container(
            width: MediaQuery.of(context).size.width,
            // height: 720.h,
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 7,
                  offset: Offset(0, 3))
            ], color: Colors.white),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 4.h,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 20.h,
                      ),
                      Text(
                        'Pembangunan Keluarga',
                        style: GoogleFonts.inter(
                            fontSize: 18.sp,
                            color: AppColor.textColor,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Text('Harap Mengisi form ini dengan benar'),
                      SizedBox(
                        height: 4.h,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 1.h,
                        decoration: BoxDecoration(color: Colors.grey),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      pertanyaan4(),
                      SizedBox(
                        height: 8.h,
                      ),
                      pertanyaan5(),
                      SizedBox(
                        height: 8.h,
                      ),
                      pertanyaan6(),
                      SizedBox(
                        height: 8.h,
                      ),
                      pertanyaan7(),
                      SizedBox(
                        height: 16.h,
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(
                              width: 120.w,
                              child: Material(
                                color: Color(0XFF767AE7),
                                borderRadius: BorderRadius.circular(9),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      vS3 = false;
                                      vS2 = true;
                                    });
                                  },
                                  borderRadius: BorderRadius.circular(8),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 12,
                                    ),
                                    child: Center(
                                      child: Text('BACK',
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline6!
                                              .copyWith(color: Colors.white)),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 24.w,
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              width: 120.w,
                              child: Material(
                                color: Color(0XFF767AE7),
                                borderRadius: BorderRadius.circular(9),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      vS3 = false;
                                      vS4 = true;
                                    });
                                  },
                                  borderRadius: BorderRadius.circular(8),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 12,
                                    ),
                                    child: Center(
                                      child: Text('NEXT',
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline6!
                                              .copyWith(color: Colors.white)),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 16.h,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Column slide4(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 8.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 5.h,
            decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5), topRight: Radius.circular(5))),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Container(
            width: MediaQuery.of(context).size.width,
            // height: 720.h,
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 7,
                  offset: Offset(0, 3))
            ], color: Colors.white),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 4.h,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 20.h,
                      ),
                      Text(
                        'Pembangunan Keluarga',
                        style: GoogleFonts.inter(
                            fontSize: 18.sp,
                            color: AppColor.textColor,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Text('Harap Mengisi form ini dengan benar'),
                      SizedBox(
                        height: 4.h,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 1.h,
                        decoration: BoxDecoration(color: Colors.grey),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      pertanyaan8(),
                      SizedBox(
                        height: 8.h,
                      ),
                      pertanyaan9(),
                      SizedBox(
                        height: 8.h,
                      ),
                      pertanyaan10(),
                      SizedBox(
                        height: 8.h,
                      ),
                      pertanyaan11(),
                      SizedBox(
                        height: 16.h,
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(
                              width: 120.w,
                              child: Material(
                                color: Color(0XFF767AE7),
                                borderRadius: BorderRadius.circular(9),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      vS4 = false;
                                      vS3 = true;
                                    });
                                  },
                                  borderRadius: BorderRadius.circular(8),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 12,
                                    ),
                                    child: Center(
                                      child: Text('BACK',
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline6!
                                              .copyWith(color: Colors.white)),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 24.w,
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              width: 120.w,
                              child: Material(
                                color: Color(0XFF767AE7),
                                borderRadius: BorderRadius.circular(9),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      vS5 = true;
                                      vS4 = false;
                                    });
                                  },
                                  borderRadius: BorderRadius.circular(8),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 12,
                                    ),
                                    child: Center(
                                      child: Text('NEXT',
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline6!
                                              .copyWith(color: Colors.white)),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 16.h,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Column slide5(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 8.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 5.h,
            decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5), topRight: Radius.circular(5))),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Container(
            width: MediaQuery.of(context).size.width,
            // height: 720.h,
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 7,
                  offset: Offset(0, 3))
            ], color: Colors.white),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 4.h,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 20.h,
                      ),
                      Text(
                        'Pembangunan Keluarga',
                        style: GoogleFonts.inter(
                            fontSize: 18.sp,
                            color: AppColor.textColor,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Text('Harap Mengisi form ini dengan benar'),
                      SizedBox(
                        height: 4.h,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 1.h,
                        decoration: BoxDecoration(color: Colors.grey),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      pertanyaan12(),
                      SizedBox(
                        height: 8.h,
                      ),
                      pertanyaan13(),
                      SizedBox(
                        height: 8.h,
                      ),
                      pertanyaan14(),
                      SizedBox(
                        height: 8.h,
                      ),
                      pertanyaan15(),
                      SizedBox(
                        height: 16.h,
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(
                              width: 120.w,
                              child: Material(
                                color: Color(0XFF767AE7),
                                borderRadius: BorderRadius.circular(9),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      vS5 = false;
                                      vS4 = true;
                                    });
                                  },
                                  borderRadius: BorderRadius.circular(8),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 12,
                                    ),
                                    child: Center(
                                      child: Text('BACK',
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline6!
                                              .copyWith(color: Colors.white)),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 24.w,
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              width: 120.w,
                              child: Material(
                                color: Color(0XFF767AE7),
                                borderRadius: BorderRadius.circular(9),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      vS6 = true;
                                      vS5 = false;
                                    });
                                  },
                                  borderRadius: BorderRadius.circular(8),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 12,
                                    ),
                                    child: Center(
                                      child: Text('NEXT',
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline6!
                                              .copyWith(color: Colors.white)),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 16.h,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Column slide6(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 8.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 5.h,
            decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5), topRight: Radius.circular(5))),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Container(
            width: MediaQuery.of(context).size.width,
            // height: 720.h,
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 7,
                  offset: Offset(0, 3))
            ], color: Colors.white),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 4.h,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 20.h,
                      ),
                      Text(
                        'Pembangunan Keluarga',
                        style: GoogleFonts.inter(
                            fontSize: 18.sp,
                            color: AppColor.textColor,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Text('Harap Mengisi form ini dengan benar'),
                      SizedBox(
                        height: 4.h,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 1.h,
                        decoration: BoxDecoration(color: Colors.grey),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      pertanyaan16(),
                      SizedBox(
                        height: 8.h,
                      ),
                      pertanyaan17(),
                      SizedBox(
                        height: 16.h,
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(
                              width: 120.w,
                              child: Material(
                                color: Color(0XFF767AE7),
                                borderRadius: BorderRadius.circular(9),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      vS6 = false;
                                      vS5 = true;
                                    });
                                  },
                                  borderRadius: BorderRadius.circular(8),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 12,
                                    ),
                                    child: Center(
                                      child: Text('BACK',
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline6!
                                              .copyWith(color: Colors.white)),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 24.w,
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              width: 120.w,
                              child: Material(
                                color: Color(0XFF767AE7),
                                borderRadius: BorderRadius.circular(9),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      vS7 = true;
                                      vS6 = false;
                                    });
                                  },
                                  borderRadius: BorderRadius.circular(8),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 12,
                                    ),
                                    child: Center(
                                      child: Text('NEXT',
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline6!
                                              .copyWith(color: Colors.white)),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 16.h,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Column slide7(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 8.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 5.h,
            decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5), topRight: Radius.circular(5))),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Container(
            width: MediaQuery.of(context).size.width,
            // height: 720.h,
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 7,
                  offset: Offset(0, 3))
            ], color: Colors.white),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 4.h,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 20.h,
                      ),
                      Text(
                        'Pembangunan Keluarga',
                        style: GoogleFonts.inter(
                            fontSize: 18.sp,
                            color: AppColor.textColor,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Text('Harap Mengisi form ini dengan benar'),
                      SizedBox(
                        height: 4.h,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 1.h,
                        decoration: BoxDecoration(color: Colors.grey),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Text(
                        'Keluarga mengikuti kegiatan usaha ekonomi melalui:',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14.sp,
                            color: AppColor.textColor),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      pertanyaan18a(),
                      SizedBox(
                        height: 8.h,
                      ),
                      pertanyaan18b(),
                      SizedBox(
                        height: 8.h,
                      ),
                      pertanyaan18c(),
                      SizedBox(
                        height: 8.h,
                      ),
                      pertanyaan18d(),
                      SizedBox(
                        height: 16.h,
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(
                              width: 120.w,
                              child: Material(
                                color: Color(0XFF767AE7),
                                borderRadius: BorderRadius.circular(9),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      vS7 = false;
                                      vS6 = true;
                                    });
                                  },
                                  borderRadius: BorderRadius.circular(8),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 12,
                                    ),
                                    child: Center(
                                      child: Text('BACK',
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline6!
                                              .copyWith(color: Colors.white)),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 24.w,
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              width: 120.w,
                              child: Material(
                                color: Color(0XFF767AE7),
                                borderRadius: BorderRadius.circular(9),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      vS7 = false;
                                      vS8 = true;
                                    });
                                  },
                                  borderRadius: BorderRadius.circular(8),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 12,
                                    ),
                                    child: Center(
                                      child: Text('NEXT',
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline6!
                                              .copyWith(color: Colors.white)),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 16.h,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Column slide8(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 8.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 5.h,
            decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5), topRight: Radius.circular(5))),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Container(
            width: MediaQuery.of(context).size.width,
            // height: 720.h,
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 7,
                  offset: Offset(0, 3))
            ], color: Colors.white),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 4.h,
                  ),
                  Form(
                    key: _formKey8,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 20.h,
                        ),
                        Text(
                          'Pembangunan Keluarga',
                          style: GoogleFonts.inter(
                              fontSize: 18.sp,
                              color: AppColor.textColor,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Text('Harap Mengisi form ini dengan benar'),
                        SizedBox(
                          height: 4.h,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 1.h,
                          decoration: BoxDecoration(color: Colors.grey),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        pertanyaan19(),
                        SizedBox(
                          height: 8.h,
                        ),
                        pertanyaan20(),
                        SizedBox(
                          height: 8.h,
                        ),
                        pertanyaan21(),
                        SizedBox(
                          height: 8.h,
                        ),
                        pertanyaan22(),
                        SizedBox(
                          height: 16.h,
                        ),
                        Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Container(
                                width: 120.w,
                                child: Material(
                                  color: Color(0XFF767AE7),
                                  borderRadius: BorderRadius.circular(9),
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        vS8 = false;
                                        vS7 = true;
                                      });
                                    },
                                    borderRadius: BorderRadius.circular(8),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 12,
                                      ),
                                      child: Center(
                                        child: Text('BACK',
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline6!
                                                .copyWith(color: Colors.white)),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 24.w,
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                width: 120.w,
                                child: Material(
                                  color: Color(0XFF767AE7),
                                  borderRadius: BorderRadius.circular(9),
                                  child: InkWell(
                                    onTap: () {
                                      if (this
                                          ._formKey8
                                          .currentState!
                                          .validate()) {
                                        this._formKey8.currentState!.save();
                                        setState(() {
                                          vS8 = false;
                                          vS9 = true;
                                        });
                                      }
                                    },
                                    borderRadius: BorderRadius.circular(8),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 12,
                                      ),
                                      child: Center(
                                        child: Text('NEXT',
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline6!
                                                .copyWith(color: Colors.white)),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 16.h,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Column slide9(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 8.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 5.h,
            decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5), topRight: Radius.circular(5))),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Container(
            width: MediaQuery.of(context).size.width,
            // height: 720.h,
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 7,
                  offset: Offset(0, 3))
            ], color: Colors.white),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 4.h,
                  ),
                  Form(
                    key: _formKey9,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 20.h,
                        ),
                        Text(
                          'Pembangunan Keluarga',
                          style: GoogleFonts.inter(
                              fontSize: 18.sp,
                              color: AppColor.textColor,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Text('Harap Mengisi form ini dengan benar'),
                        SizedBox(
                          height: 4.h,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 1.h,
                          decoration: BoxDecoration(color: Colors.grey),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        pertanyaan23(),
                        SizedBox(
                          height: 8.h,
                        ),
                        pertanyaan24(),
                        SizedBox(
                          height: 16.h,
                        ),
                        Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Container(
                                width: 120.w,
                                child: Material(
                                  color: Color(0XFF767AE7),
                                  borderRadius: BorderRadius.circular(9),
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        vS9 = false;
                                        vS8 = true;
                                      });
                                    },
                                    borderRadius: BorderRadius.circular(8),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 12,
                                      ),
                                      child: Center(
                                        child: Text('BACK',
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline6!
                                                .copyWith(color: Colors.white)),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 24.w,
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                width: 120.w,
                                child: Material(
                                  color: Color(0XFF767AE7),
                                  borderRadius: BorderRadius.circular(9),
                                  child: InkWell(
                                    onTap: () {
                                      if (this
                                          ._formKey9
                                          .currentState!
                                          .validate()) {
                                        this._formKey9.currentState!.save();
                                        setState(() {
                                          vS9 = false;
                                          vS10 = true;
                                        });
                                      }
                                    },
                                    borderRadius: BorderRadius.circular(8),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 12,
                                      ),
                                      child: Center(
                                        child: Text('NEXT',
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline6!
                                                .copyWith(color: Colors.white)),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 16.h,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Column slide10(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 8.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 5.h,
            decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5), topRight: Radius.circular(5))),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Container(
            width: MediaQuery.of(context).size.width,
            // height: 720.h,
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 7,
                  offset: Offset(0, 3))
            ], color: Colors.white),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 4.h,
                  ),
                  Form(
                    key: _formKey10,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 20.h,
                        ),
                        Text(
                          'Pembangunan Keluarga',
                          style: GoogleFonts.inter(
                              fontSize: 18.sp,
                              color: AppColor.textColor,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Text('Harap Mengisi form ini dengan benar'),
                        SizedBox(
                          height: 4.h,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 1.h,
                          decoration: BoxDecoration(color: Colors.grey),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        pertanyaan25(),
                        SizedBox(
                          height: 8.h,
                        ),
                        pertanyaan26(),
                        SizedBox(
                          height: 16.h,
                        ),
                        Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Container(
                                width: 120.w,
                                child: Material(
                                  color: Color(0XFF767AE7),
                                  borderRadius: BorderRadius.circular(9),
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        vS10 = false;
                                        vS9 = true;
                                      });
                                    },
                                    borderRadius: BorderRadius.circular(8),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 12,
                                      ),
                                      child: Center(
                                        child: Text('BACK',
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline6!
                                                .copyWith(color: Colors.white)),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 24.w,
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                width: 120.w,
                                child: Material(
                                  color: Color(0XFF767AE7),
                                  borderRadius: BorderRadius.circular(9),
                                  child: InkWell(
                                    onTap: () {
                                      if (this
                                          ._formKey10
                                          .currentState!
                                          .validate()) {
                                        this._formKey10.currentState!.save();
                                        setState(() {
                                          vS10 = false;
                                          vS11 = true;
                                        });
                                      }
                                    },
                                    borderRadius: BorderRadius.circular(8),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 12,
                                      ),
                                      child: Center(
                                        child: Text('NEXT',
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline6!
                                                .copyWith(color: Colors.white)),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 16.h,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Column slide11(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 8.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 5.h,
            decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5), topRight: Radius.circular(5))),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Container(
            width: MediaQuery.of(context).size.width,
            // height: 720.h,
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 7,
                  offset: Offset(0, 3))
            ], color: Colors.white),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 4.h,
                  ),
                  Form(
                    key: _formKey11,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 20.h,
                        ),
                        Text(
                          'Pembangunan Keluarga',
                          style: GoogleFonts.inter(
                              fontSize: 18.sp,
                              color: AppColor.textColor,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Text('Harap Mengisi form ini dengan benar'),
                        SizedBox(
                          height: 4.h,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 1.h,
                          decoration: BoxDecoration(color: Colors.grey),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        pertanyaan27(),
                        SizedBox(
                          height: 8.h,
                        ),
                        pertanyaan28(),
                        SizedBox(
                          height: 16.h,
                        ),
                        Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Container(
                                width: 120.w,
                                child: Material(
                                  color: Color(0XFF767AE7),
                                  borderRadius: BorderRadius.circular(9),
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        vS11 = false;
                                        vS10 = true;
                                      });
                                    },
                                    borderRadius: BorderRadius.circular(8),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 12,
                                      ),
                                      child: Center(
                                        child: Text('BACK',
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline6!
                                                .copyWith(color: Colors.white)),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 24.w,
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                width: 120.w,
                                child: Material(
                                  color: Color(0XFF767AE7),
                                  borderRadius: BorderRadius.circular(9),
                                  child: InkWell(
                                    onTap: () {
                                      if (this
                                          ._formKey11
                                          .currentState!
                                          .validate()) {
                                        this._formKey11.currentState!.save();
                                        setState(() {
                                          vS11 = false;
                                          vS12 = true;
                                        });
                                      }
                                    },
                                    borderRadius: BorderRadius.circular(8),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 12,
                                      ),
                                      child: Center(
                                        child: Text('NEXT',
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline6!
                                                .copyWith(color: Colors.white)),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 16.h,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Column slide12(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 8.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 5.h,
            decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5), topRight: Radius.circular(5))),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Container(
            width: MediaQuery.of(context).size.width,
            // height: 720.h,
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 7,
                  offset: Offset(0, 3))
            ], color: Colors.white),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 4.h,
                  ),
                  Form(
                    key: _formKey12,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 20.h,
                        ),
                        Text(
                          'Pembangunan Keluarga',
                          style: GoogleFonts.inter(
                              fontSize: 18.sp,
                              color: AppColor.textColor,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Text('Harap Mengisi form ini dengan benar'),
                        SizedBox(
                          height: 4.h,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 1.h,
                          decoration: BoxDecoration(color: Colors.grey),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        pertanyaan29(),
                        SizedBox(
                          height: 8.h,
                        ),
                        Visibility(child: pertanyaan30(), visible: vP30,),
                        SizedBox(
                          height: 8.h,
                        ),
                        pertanyaan31(),
                        SizedBox(
                          height: 8.h,
                        ),
                        Visibility(child: pertanyaan32(), visible: vP32,),
                        SizedBox(
                          height: 8.h,
                        ),
                        Visibility(child: textFieldString('Tuliskan'), visible: vPLainnya,),
                        SizedBox(
                          height: 16.h,
                        ),
                        Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Container(
                                width: 120.w,
                                child: Material(
                                  color: Color(0XFF767AE7),
                                  borderRadius: BorderRadius.circular(9),
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        vS12 = false;
                                        vS11 = true;
                                      });
                                    },
                                    borderRadius: BorderRadius.circular(8),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 12,
                                      ),
                                      child: Center(
                                        child: Text('BACK',
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline6!
                                                .copyWith(color: Colors.white)),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 24.w,
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                width: 120.w,
                                child: Material(
                                  color: Color(0XFF767AE7),
                                  borderRadius: BorderRadius.circular(9),
                                  child: InkWell(
                                    onTap: () {
                                      if (this
                                          ._formKey12
                                          .currentState!
                                          .validate()) {
                                        this._formKey12.currentState!.save();
                                        Get.to(FormCoba());
                                      }
                                    },
                                    borderRadius: BorderRadius.circular(8),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 12,
                                      ),
                                      child: Center(
                                        child: Text('NEXT',
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline6!
                                                .copyWith(color: Colors.white)),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 16.h,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Column pertanyaan1() {
    return Column(
      children: [
        Text(
          'Selama 6 (enam) bulan terakhir, setiap anggota keluarga (usia 10 tahun ke atas) menjalankan ibadah secara rutin sesuai dengan tuntunan agama atau kepercayaan yang dianut',
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14.sp,
              color: AppColor.textColor),
        ),
        DView.spaceHeight(8),
        DropdownButtonFormField(
            decoration: decorationField(),
            style: TextStyle(fontSize: 12.sp, color: Colors.black),
            dropdownColor: AppColor.bdtextField,
            value: selectedValue,
            onChanged: (String? newValue) {
              setState(() {
                selectedValue = newValue!;
              });
            },
            onSaved: (value) {
              selectedValue = value.toString();
            },
            items: dropdownItems),
        SizedBox(
          height: 4.h,
        ),
      ],
    );
  }

  Column pertanyaan2() {
    return Column(
      children: [
        Text(
          'Keluarga memiliki buku/akta nikah yang disahkan oleh pejabat yang berwenang',
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14.sp,
              color: AppColor.textColor),
        ),
        DView.spaceHeight(8),
        DropdownButtonFormField(
            decoration: decorationField(),
            style: TextStyle(fontSize: 12.sp, color: Colors.black),
            dropdownColor: AppColor.bdtextField,
            value: selectedValue2,
            onChanged: (String? newValue) {
              setState(() {
                selectedValue2 = newValue!;
              });
            },
            onSaved: (value) {
              selectedValue2 = value.toString();
            },
            items: dropdownItems2),
        SizedBox(
          height: 4.h,
        ),
      ],
    );
  }

  Column pertanyaan3a() {
    return Column(
      children: [
        Text(
          'Tanpa tegur sapa (selama 3 hari berturut-turut)',
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14.sp,
              color: AppColor.textColor),
        ),
        DView.spaceHeight(8),
        DropdownButtonFormField(
            decoration: decorationField(),
            style: TextStyle(fontSize: 12.sp, color: Colors.black),
            dropdownColor: AppColor.bdtextField,
            value: selectedValue3a,
            onChanged: (String? newValue) {
              setState(() {
                selectedValue3a = newValue!;
              });
            },
            onSaved: (value) {
              selectedValue3a = value.toString();
            },
            items: dropdownItems),
        SizedBox(
          height: 4.h,
        ),
      ],
    );
  }

  Column pertanyaan3b() {
    return Column(
      children: [
        Text(
          'Pisah ranjang antara suami dan istri (selama 7 hari berturut-turut)',
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14.sp,
              color: AppColor.textColor),
        ),
        DView.spaceHeight(8),
        DropdownButtonFormField(
            decoration: decorationField(),
            style: TextStyle(fontSize: 12.sp, color: Colors.black),
            dropdownColor: AppColor.bdtextField,
            value: selectedValue2,
            onChanged: (String? newValue) {
              setState(() {
                selectedValue3b = newValue!;
              });
            },
            onSaved: (value) {
              selectedValue3b = value.toString();
            },
            items: dropdownItems2),
        SizedBox(
          height: 4.h,
        ),
      ],
    );
  }

  Column pertanyaan3c() {
    return Column(
      children: [
        Text(
          'Pergi dari rumah/minggat (selama 2 hari berturut-turut)',
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14.sp,
              color: AppColor.textColor),
        ),
        DView.spaceHeight(8),
        DropdownButtonFormField(
            decoration: decorationField(),
            style: TextStyle(fontSize: 12.sp, color: Colors.black),
            dropdownColor: AppColor.bdtextField,
            value: selectedValue3c,
            onChanged: (String? newValue) {
              setState(() {
                selectedValue3c = newValue!;
              });
            },
            onSaved: (value) {
              selectedValue3c = value.toString();
            },
            items: dropdownItems),
        SizedBox(
          height: 4.h,
        ),
      ],
    );
  }

  Column pertanyaan3d() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Kekerasan dalam rumah tangga',
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14.sp,
              color: AppColor.textColor),
        ),
        DView.spaceHeight(8),
        DropdownButtonFormField(
            decoration: decorationField(),
            style: TextStyle(fontSize: 12.sp, color: Colors.black),
            dropdownColor: AppColor.bdtextField,
            value: selectedValue3d,
            onChanged: (String? newValue) {
              setState(() {
                selectedValue3d = newValue!;
              });
            },
            onSaved: (value) {
              selectedValue3d = value.toString();
            },
            items: dropdownItems),
        SizedBox(
          height: 4.h,
        ),
      ],
    );
  }

  Column pertanyaan4() {
    return Column(
      children: [
        Text(
          'Selama 6 (enam) bulan terakhir, terdapat paling sedikit 1 (satu) anggota keluarga memiliki sumber penghasilan untuk memenuhi kebutuhan pokok per bulan',
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14.sp,
              color: AppColor.textColor),
        ),
        DView.spaceHeight(8),
        DropdownButtonFormField(
            decoration: decorationField(),
            style: TextStyle(fontSize: 12.sp, color: Colors.black),
            dropdownColor: AppColor.bdtextField,
            value: selectedValue4,
            onChanged: (String? newValue) {
              setState(() {
                selectedValue4 = newValue!;
              });
            },
            onSaved: (value) {
              selectedValue4 = value.toString();
            },
            items: dropdownItems),
        SizedBox(
          height: 4.h,
        ),
      ],
    );
  }

  Column pertanyaan5() {
    return Column(
      children: [
        Text(
          'Selama 6 (enam) bulan terakhir, setiap anggota keluarga makan “makanan beragam” (makanan pokok, sayur/buah dan lauk) paling sedikit 2 (dua) kali sehari',
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14.sp,
              color: AppColor.textColor),
        ),
        DView.spaceHeight(8),
        DropdownButtonFormField(
            decoration: decorationField(),
            style: TextStyle(fontSize: 12.sp, color: Colors.black),
            dropdownColor: AppColor.bdtextField,
            value: selectedValue5,
            onChanged: (String? newValue) {
              setState(() {
                selectedValue5 = newValue!;
              });
            },
            onSaved: (value) {
              selectedValue5 = value.toString();
            },
            items: dropdownItems),
        SizedBox(
          height: 4.h,
        ),
      ],
    );
  }

  Column pertanyaan6() {
    return Column(
      children: [
        Text(
          'Keluarga memiliki tabungan/ simpanan (uang kontan, perhiasan, hewan ternak, hasil kebun, dll) yang dapat digunakan sewaktu-waktu untuk memenuhi kebutuhan pokok dalam 3 (tiga) bulan ke depan',
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14.sp,
              color: AppColor.textColor),
        ),
        DView.spaceHeight(8),
        DropdownButtonFormField(
            decoration: decorationField(),
            style: TextStyle(fontSize: 12.sp, color: Colors.black),
            dropdownColor: AppColor.bdtextField,
            value: selectedValue6,
            onChanged: (String? newValue) {
              setState(() {
                selectedValue6 = newValue!;
              });
            },
            onSaved: (value) {
              selectedValue6 = value.toString();
            },
            items: dropdownItems),
        SizedBox(
          height: 4.h,
        ),
      ],
    );
  }

  Column pertanyaan7() {
    return Column(
      children: [
        Text(
          'Selama 1 (satu) bulan terakhir, terdapat anggota keluarga yang sakit (empat hari berturut-turut) sehingga meninggalkan aktifitas, atau ada anggota keluarga yang disabilitas',
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14.sp,
              color: AppColor.textColor),
        ),
        DView.spaceHeight(8),
        DropdownButtonFormField(
            decoration: decorationField(),
            style: TextStyle(fontSize: 12.sp, color: Colors.black),
            dropdownColor: AppColor.bdtextField,
            value: selectedValue7,
            onChanged: (String? newValue) {
              setState(() {
                selectedValue7 = newValue!;
              });
            },
            onSaved: (value) {
              selectedValue7 = value.toString();
            },
            items: dropdownItems),
        SizedBox(
          height: 4.h,
        ),
      ],
    );
  }

  Column pertanyaan8() {
    return Column(
      children: [
        Text(
          'Selama 6 (enam) bulan terakhir, terdapat paling sedikit 1 (satu) anggota keluarga mengakses informasi dari media online (internet)',
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14.sp,
              color: AppColor.textColor),
        ),
        DView.spaceHeight(8),
        DropdownButtonFormField(
            decoration: decorationField(),
            style: TextStyle(fontSize: 12.sp, color: Colors.black),
            dropdownColor: AppColor.bdtextField,
            value: selectedValue8,
            onChanged: (String? newValue) {
              setState(() {
                selectedValue8 = newValue!;
              });
            },
            onSaved: (value) {
              selectedValue8 = value.toString();
            },
            items: dropdownItems),
        SizedBox(
          height: 4.h,
        ),
      ],
    );
  }

  Column pertanyaan9() {
    return Column(
      children: [
        Text(
          'Selama 6 (enam) bulan terakhir, setiap anggota keluarga memiliki waktu untuk berinteraksi setiap hari',
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14.sp,
              color: AppColor.textColor),
        ),
        DView.spaceHeight(8),
        DropdownButtonFormField(
            decoration: decorationField(),
            style: TextStyle(fontSize: 12.sp, color: Colors.black),
            dropdownColor: AppColor.bdtextField,
            value: selectedValue9,
            onChanged: (String? newValue) {
              setState(() {
                selectedValue9 = newValue!;
              });
            },
            onSaved: (value) {
              selectedValue9 = value.toString();
            },
            items: dropdownItems),
        SizedBox(
          height: 4.h,
        ),
      ],
    );
  }

  Column pertanyaan10() {
    return Column(
      children: [
        Text(
          'Selama 6 (enam) bulan terakhir, pengasuhan anak dilakukan bersama antara suami dan istri',
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14.sp,
              color: AppColor.textColor),
        ),
        DView.spaceHeight(8),
        DropdownButtonFormField(
            decoration: decorationField(),
            style: TextStyle(fontSize: 12.sp, color: Colors.black),
            dropdownColor: AppColor.bdtextField,
            value: selectedValue10,
            onChanged: (String? newValue) {
              setState(() {
                selectedValue10 = newValue!;
              });
            },
            onSaved: (value) {
              selectedValue10 = value.toString();
            },
            items: dropdownItems2),
        SizedBox(
          height: 4.h,
        ),
      ],
    );
  }

  Column pertanyaan11() {
    return Column(
      children: [
        Text(
          'Selama 6 (enam) bulan terakhir, keluarga pernah berekreasi bersama di luar rumah)',
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14.sp,
              color: AppColor.textColor),
        ),
        DView.spaceHeight(8),
        DropdownButtonFormField(
            decoration: decorationField(),
            style: TextStyle(fontSize: 12.sp, color: Colors.black),
            dropdownColor: AppColor.bdtextField,
            value: selectedValue11,
            onChanged: (String? newValue) {
              setState(() {
                selectedValue11 = newValue!;
              });
            },
            onSaved: (value) {
              selectedValue11 = value.toString();
            },
            items: dropdownItems),
        SizedBox(
          height: 4.h,
        ),
      ],
    );
  }

  Column pertanyaan12() {
    return Column(
      children: [
        Text(
          'Selama 6 (enam) bulan terakhir, keluarga ikut serta dalam kegiatan sosial/gotong royong di lingkungan RT',
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14.sp,
              color: AppColor.textColor),
        ),
        DView.spaceHeight(8),
        DropdownButtonFormField(
            decoration: decorationField(),
            style: TextStyle(fontSize: 12.sp, color: Colors.black),
            dropdownColor: AppColor.bdtextField,
            value: selectedValue12,
            onChanged: (String? newValue) {
              setState(() {
                selectedValue12 = newValue!;
              });
            },
            onSaved: (value) {
              selectedValue12 = value.toString();
            },
            items: dropdownItems),
        SizedBox(
          height: 4.h,
        ),
      ],
    );
  }

  Column pertanyaan13() {
    return Column(
      children: [
        Text(
          'Keluarga mempunyai balita (0-5 thn) ikut kegiatan Posyandu',
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14.sp,
              color: AppColor.textColor),
        ),
        DView.spaceHeight(8),
        DropdownButtonFormField(
            decoration: decorationField(),
            style: TextStyle(fontSize: 12.sp, color: Colors.black),
            dropdownColor: AppColor.bdtextField,
            value: selectedValue13,
            onChanged: (String? newValue) {
              setState(() {
                selectedValue13 = newValue!;
              });
            },
            onSaved: (value) {
              selectedValue13 = value.toString();
            },
            items: dropdownItems2),
        SizedBox(
          height: 4.h,
        ),
      ],
    );
  }

  Column pertanyaan14() {
    return Column(
      children: [
        Text(
          'Keluarga mempunyai balita dan anak (0-6 thn) ikut kegiatan Bina Keluarga Balita (BKB)',
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14.sp,
              color: AppColor.textColor),
        ),
        DView.spaceHeight(8),
        DropdownButtonFormField(
            decoration: decorationField(),
            style: TextStyle(fontSize: 12.sp, color: Colors.black),
            dropdownColor: AppColor.bdtextField,
            value: selectedValue14,
            onChanged: (String? newValue) {
              setState(() {
                selectedValue14 = newValue!;
              });
            },
            onSaved: (value) {
              selectedValue14 = value.toString();
            },
            items: dropdownItems2),
        SizedBox(
          height: 4.h,
        ),
      ],
    );
  }

  Column pertanyaan15() {
    return Column(
      children: [
        Text(
          'Keluarga mempunyai remaja (10-24 thn) ikut kegiatan Bina Keluarga Remaja (BKR)',
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14.sp,
              color: AppColor.textColor),
        ),
        DView.spaceHeight(8),
        DropdownButtonFormField(
            decoration: decorationField(),
            style: TextStyle(fontSize: 12.sp, color: Colors.black),
            dropdownColor: AppColor.bdtextField,
            value: selectedValue15,
            onChanged: (String? newValue) {
              setState(() {
                selectedValue15 = newValue!;
              });
            },
            onSaved: (value) {
              selectedValue15 = value.toString();
            },
            items: dropdownItems2),
        SizedBox(
          height: 4.h,
        ),
      ],
    );
  }

  Column pertanyaan16() {
    return Column(
      children: [
        Text(
          'Ada anggota keluarga masih remaja (10-24 thn) ikut Pusat Informasi dan Konseling Remaja / Mahasiswa (PIK-R/M)',
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14.sp,
              color: AppColor.textColor),
        ),
        DView.spaceHeight(8),
        DropdownButtonFormField(
            decoration: decorationField(),
            style: TextStyle(fontSize: 12.sp, color: Colors.black),
            dropdownColor: AppColor.bdtextField,
            value: selectedValue16,
            onChanged: (String? newValue) {
              setState(() {
                selectedValue16 = newValue!;
              });
            },
            onSaved: (value) {
              selectedValue16 = value.toString();
            },
            items: dropdownItems2),
        SizedBox(
          height: 4.h,
        ),
      ],
    );
  }

  Column pertanyaan17() {
    return Column(
      children: [
        Text(
          'Keluarga yang memiliki lansia dan atau lansia (umur ≥60 tahun) ikut kegiatan Bina Keluarga Lansia (BKL)',
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14.sp,
              color: AppColor.textColor),
        ),
        DView.spaceHeight(8),
        DropdownButtonFormField(
            decoration: decorationField(),
            style: TextStyle(fontSize: 12.sp, color: Colors.black),
            dropdownColor: AppColor.bdtextField,
            value: selectedValue17,
            onChanged: (String? newValue) {
              setState(() {
                selectedValue17 = newValue!;
              });
            },
            onSaved: (value) {
              selectedValue17 = value.toString();
            },
            items: dropdownItems2),
        SizedBox(
          height: 4.h,
        ),
      ],
    );
  }

  Column pertanyaan18a() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Usaha Peningkatan Pendapatan Keluarga Sejahtera (UPPKS)',
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14.sp,
              color: AppColor.textColor),
        ),
        DView.spaceHeight(8),
        DropdownButtonFormField(
            decoration: decorationField(),
            style: TextStyle(fontSize: 12.sp, color: Colors.black),
            dropdownColor: AppColor.bdtextField,
            value: selectedValue18a,
            onChanged: (String? newValue) {
              setState(() {
                selectedValue18a = newValue!;
              });
            },
            onSaved: (value) {
              selectedValue18a = value.toString();
            },
            items: dropdownItems),
        SizedBox(
          height: 4.h,
        ),
      ],
    );
  }

  Column pertanyaan18b() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'PNM Mekaar BUMN',
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14.sp,
              color: AppColor.textColor),
        ),
        DView.spaceHeight(8),
        DropdownButtonFormField(
            decoration: decorationField(),
            style: TextStyle(fontSize: 12.sp, color: Colors.black),
            dropdownColor: AppColor.bdtextField,
            value: selectedValue18b,
            onChanged: (String? newValue) {
              setState(() {
                selectedValue18b = newValue!;
              });
            },
            onSaved: (value) {
              selectedValue18b = value.toString();
            },
            items: dropdownItems),
        SizedBox(
          height: 4.h,
        ),
      ],
    );
  }

  Column pertanyaan18c() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Program Keluarga Harapan (PKH) Kemensos',
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14.sp,
              color: AppColor.textColor),
        ),
        DView.spaceHeight(8),
        DropdownButtonFormField(
            decoration: decorationField(),
            style: TextStyle(fontSize: 12.sp, color: Colors.black),
            dropdownColor: AppColor.bdtextField,
            value: selectedValue18c,
            onChanged: (String? newValue) {
              setState(() {
                selectedValue18c = newValue!;
              });
            },
            onSaved: (value) {
              selectedValue18c = value.toString();
            },
            items: dropdownItems),
        SizedBox(
          height: 4.h,
        ),
      ],
    );
  }

  Column pertanyaan18d() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Instansi Pemerintah Lain/Swasta/LSM',
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14.sp,
              color: AppColor.textColor),
        ),
        DView.spaceHeight(8),
        DropdownButtonFormField(
            decoration: decorationField(),
            style: TextStyle(fontSize: 12.sp, color: Colors.black),
            dropdownColor: AppColor.bdtextField,
            value: selectedValue18d,
            onChanged: (String? newValue) {
              setState(() {
                selectedValue18d = newValue!;
              });
            },
            onSaved: (value) {
              selectedValue18d = value.toString();
            },
            items: dropdownItems),
        SizedBox(
          height: 4.h,
        ),
      ],
    );
  }

  Column pertanyaan19() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Jenis atap rumah terluas?',
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14.sp,
              color: AppColor.textColor),
        ),
        DView.spaceHeight(8),
        TypeAheadFormField(
          textFieldConfiguration: TextFieldConfiguration(
            controller: this._typeValue19Controller,
            decoration: InputDecoration(
                counterText: '',
                fillColor: AppColor.bdtextField,
                filled: true,
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.withOpacity(0.1)),
                    borderRadius: BorderRadius.circular(5)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.withOpacity(0.1)),
                    borderRadius: BorderRadius.circular(5)),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 0.8),
                    borderRadius: BorderRadius.circular(5)),
                isDense: true, // Added this
                contentPadding: EdgeInsets.all(10.w)),
          ),
          suggestionsCallback: (pattern) {
            return AtapRumah.getSuggestions(pattern);
          },
          itemBuilder: (context, suggestion) {
            return ListTile(
              title: Text('${suggestion}'),
            );
          },
          transitionBuilder: (context, suggestionsBox, controller) {
            return suggestionsBox;
          },
          onSuggestionSelected: (suggestion) {
            this._typeValue19Controller.text = '${suggestion}';
          },
          validator: (value) {
            if (value!.isEmpty) {
              return 'Field ini harus diisi';
            }
          },
          onSaved: (value) => this.selectedValue19 = value!,
        ),
        SizedBox(
          height: 4.h,
        ),
      ],
    );
  }

  Column pertanyaan20() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Jenis dinding rumah terluas?',
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14.sp,
              color: AppColor.textColor),
        ),
        DView.spaceHeight(8),
        TypeAheadFormField(
          textFieldConfiguration: TextFieldConfiguration(
            controller: this._typeValue20Controller,
            decoration: InputDecoration(
                counterText: '',
                fillColor: AppColor.bdtextField,
                filled: true,
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.withOpacity(0.1)),
                    borderRadius: BorderRadius.circular(5)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.withOpacity(0.1)),
                    borderRadius: BorderRadius.circular(5)),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 0.8),
                    borderRadius: BorderRadius.circular(5)),
                isDense: true, // Added this
                contentPadding: EdgeInsets.all(10.w)),
          ),
          suggestionsCallback: (pattern) {
            return JenisDinding.getSuggestions(pattern);
          },
          itemBuilder: (context, suggestion) {
            return ListTile(
              title: Text('${suggestion}'),
            );
          },
          transitionBuilder: (context, suggestionsBox, controller) {
            return suggestionsBox;
          },
          onSuggestionSelected: (suggestion) {
            this._typeValue20Controller.text = '${suggestion}';
          },
          validator: (value) {
            if (value!.isEmpty) {
              return 'Field ini harus diisi';
            }
          },
          onSaved: (value) => this.selectedValue20 = value!,
        ),
        SizedBox(
          height: 4.h,
        ),
      ],
    );
  }

  Column pertanyaan21() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Jenis lantai rumah terluas?',
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14.sp,
              color: AppColor.textColor),
        ),
        DView.spaceHeight(8),
        TypeAheadFormField(
          textFieldConfiguration: TextFieldConfiguration(
            controller: this._typeValue21Controller,
            decoration: InputDecoration(
                counterText: '',
                fillColor: AppColor.bdtextField,
                filled: true,
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.withOpacity(0.1)),
                    borderRadius: BorderRadius.circular(5)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.withOpacity(0.1)),
                    borderRadius: BorderRadius.circular(5)),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 0.8),
                    borderRadius: BorderRadius.circular(5)),
                isDense: true, // Added this
                contentPadding: EdgeInsets.all(10.w)),
          ),
          suggestionsCallback: (pattern) {
            return JenisLantai.getSuggestions(pattern);
          },
          itemBuilder: (context, suggestion) {
            return ListTile(
              title: Text('${suggestion}'),
            );
          },
          transitionBuilder: (context, suggestionsBox, controller) {
            return suggestionsBox;
          },
          onSuggestionSelected: (suggestion) {
            this._typeValue21Controller.text = '${suggestion}';
          },
          validator: (value) {
            if (value!.isEmpty) {
              return 'Field ini harus diisi';
            }
          },
          onSaved: (value) => this.selectedValue21 = value!,
        ),
        SizedBox(
          height: 4.h,
        ),
      ],
    );
  }

  Column pertanyaan22() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Sumber penerangan utama?',
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14.sp,
              color: AppColor.textColor),
        ),
        DView.spaceHeight(8),
        TypeAheadFormField(
          textFieldConfiguration: TextFieldConfiguration(
            controller: this._typeValue22Controller,
            decoration: InputDecoration(
                counterText: '',
                fillColor: AppColor.bdtextField,
                filled: true,
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.withOpacity(0.1)),
                    borderRadius: BorderRadius.circular(5)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.withOpacity(0.1)),
                    borderRadius: BorderRadius.circular(5)),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 0.8),
                    borderRadius: BorderRadius.circular(5)),
                isDense: true, // Added this
                contentPadding: EdgeInsets.all(10.w)),
          ),
          suggestionsCallback: (pattern) {
            return SumberListrik.getSuggestions(pattern);
          },
          itemBuilder: (context, suggestion) {
            return ListTile(
              title: Text('${suggestion}'),
            );
          },
          transitionBuilder: (context, suggestionsBox, controller) {
            return suggestionsBox;
          },
          onSuggestionSelected: (suggestion) {
            this._typeValue22Controller.text = '${suggestion}';
          },
          validator: (value) {
            if (value!.isEmpty) {
              return 'Field ini harus diisi';
            }
          },
          onSaved: (value) => this.selectedValue22 = value!,
        ),
        SizedBox(
          height: 4.h,
        ),
      ],
    );
  }

  Column pertanyaan23() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Sumber air minum utama?',
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14.sp,
              color: AppColor.textColor),
        ),
        DView.spaceHeight(8),
        TypeAheadFormField(
          textFieldConfiguration: TextFieldConfiguration(
            controller: this._typeValue23Controller,
            decoration: InputDecoration(
                counterText: '',
                fillColor: AppColor.bdtextField,
                filled: true,
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.withOpacity(0.1)),
                    borderRadius: BorderRadius.circular(5)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.withOpacity(0.1)),
                    borderRadius: BorderRadius.circular(5)),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 0.8),
                    borderRadius: BorderRadius.circular(5)),
                isDense: true, // Added this
                contentPadding: EdgeInsets.all(10.w)),
          ),
          suggestionsCallback: (pattern) {
            return SumberAir.getSuggestions(pattern);
          },
          itemBuilder: (context, suggestion) {
            return ListTile(
              title: Text('${suggestion}'),
            );
          },
          transitionBuilder: (context, suggestionsBox, controller) {
            return suggestionsBox;
          },
          onSuggestionSelected: (suggestion) {
            this._typeValue23Controller.text = '${suggestion}';
          },
          validator: (value) {
            if (value!.isEmpty) {
              return 'Field ini harus diisi';
            }
          },
          onSaved: (value) => this.selectedValue23 = value!,
        ),
        SizedBox(
          height: 4.h,
        ),
      ],
    );
  }

  Column pertanyaan24() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Memiliki fasilitas tempat buang air besar?',
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14.sp,
              color: AppColor.textColor),
        ),
        DView.spaceHeight(8),
        TypeAheadFormField(
          textFieldConfiguration: TextFieldConfiguration(
            controller: this._typeValue24Controller,
            decoration: InputDecoration(
                counterText: '',
                fillColor: AppColor.bdtextField,
                filled: true,
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.withOpacity(0.1)),
                    borderRadius: BorderRadius.circular(5)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.withOpacity(0.1)),
                    borderRadius: BorderRadius.circular(5)),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 0.8),
                    borderRadius: BorderRadius.circular(5)),
                isDense: true, // Added this
                contentPadding: EdgeInsets.all(10.w)),
          ),
          suggestionsCallback: (pattern) {
            return WC.getSuggestions(pattern);
          },
          itemBuilder: (context, suggestion) {
            return ListTile(
              title: Text('${suggestion}'),
            );
          },
          transitionBuilder: (context, suggestionsBox, controller) {
            return suggestionsBox;
          },
          onSuggestionSelected: (suggestion) {
            this._typeValue24Controller.text = '${suggestion}';
          },
          validator: (value) {
            if (value!.isEmpty) {
              return 'Field ini harus diisi';
            }
          },
          onSaved: (value) => this.selectedValue24 = value!,
        ),
        SizedBox(
          height: 4.h,
        ),
      ],
    );
  }

  Column pertanyaan25() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        textFieldNumber('Luas rumah/bangunan keseluruhan (m2)?', 5),
        SizedBox(
          height: 4.h,
        ),
      ],
    );
  }

  Column pertanyaan26() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        textFieldNumber('Luas rumah/bangunan keseluruhan (m2)?', 2),
        SizedBox(
          height: 4.h,
        ),
      ],
    );
  }

  InputDecoration decorationField() {
    return InputDecoration(
        counterText: '',
        fillColor: AppColor.bdtextField,
        filled: true,
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.withOpacity(0.1)),
            borderRadius: BorderRadius.circular(3)),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.withOpacity(0.1)),
            borderRadius: BorderRadius.circular(3)),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(3),
        ),
        errorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey.withOpacity(0.1),
            ),
            borderRadius: BorderRadius.circular(3)),
        focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red, width: 0.8),
            borderRadius: BorderRadius.circular(3)),
        isDense: true, // Added this
        contentPadding: EdgeInsets.all(10.w));
  }

  Column pertanyaan27() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Bahan bakar utama untuk memasak?',
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14.sp,
              color: AppColor.textColor),
        ),
        DView.spaceHeight(8),
        TypeAheadFormField(
          textFieldConfiguration: TextFieldConfiguration(
            controller: this._typeValue27Controller,
            decoration: InputDecoration(
                counterText: '',
                fillColor: AppColor.bdtextField,
                filled: true,
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.withOpacity(0.1)),
                    borderRadius: BorderRadius.circular(5)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.withOpacity(0.1)),
                    borderRadius: BorderRadius.circular(5)),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 0.8),
                    borderRadius: BorderRadius.circular(5)),
                isDense: true, // Added this
                contentPadding: EdgeInsets.all(10.w)),
          ),
          suggestionsCallback: (pattern) {
            return BahanBakar.getSuggestions(pattern);
          },
          itemBuilder: (context, suggestion) {
            return ListTile(
              title: Text('${suggestion}'),
            );
          },
          transitionBuilder: (context, suggestionsBox, controller) {
            return suggestionsBox;
          },
          onSuggestionSelected: (suggestion) {
            this._typeValue27Controller.text = '${suggestion}';
          },
          validator: (value) {
            if (value!.isEmpty) {
              return 'Field ini harus diisi';
            }
          },
          onSaved: (value) => this.selectedValue27 = value!,
        ),
        SizedBox(
          height: 4.h,
        ),
      ],
    );
  }

  Column pertanyaan28() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Kepemilikan rumah/bangunan tempat tinggal?',
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14.sp,
              color: AppColor.textColor),
        ),
        DView.spaceHeight(8),
        TypeAheadFormField(
          textFieldConfiguration: TextFieldConfiguration(
            controller: this._typeValue28Controller,
            decoration: InputDecoration(
                counterText: '',
                fillColor: AppColor.bdtextField,
                filled: true,
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.withOpacity(0.1)),
                    borderRadius: BorderRadius.circular(5)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.withOpacity(0.1)),
                    borderRadius: BorderRadius.circular(5)),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 0.8),
                    borderRadius: BorderRadius.circular(5)),
                isDense: true, // Added this
                contentPadding: EdgeInsets.all(10.w)),
          ),
          suggestionsCallback: (pattern) {
            return KepemilikanRumah.getSuggestions(pattern);
          },
          itemBuilder: (context, suggestion) {
            return ListTile(
              title: Text('${suggestion}'),
            );
          },
          transitionBuilder: (context, suggestionsBox, controller) {
            return suggestionsBox;
          },
          onSuggestionSelected: (suggestion) {
            this._typeValue28Controller.text = '${suggestion}';
          },
          validator: (value) {
            if (value!.isEmpty) {
              return 'Field ini harus diisi';
            }
          },
          onSaved: (value) => this.selectedValue28 = value!,
        ),
        SizedBox(
          height: 4.h,
        ),
      ],
    );
  }

  Column pertanyaan29() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Keluarga pernah memperoleh/mendengar/melihat pesan/informasi program kependudukan, Keluarga Berencana dan Pembangunan Keluarga dari media?',
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14.sp,
              color: AppColor.textColor),
        ),
        DView.spaceHeight(8),
        DropdownButtonFormField(
            decoration: decorationField(),
            style: TextStyle(fontSize: 12.sp, color: Colors.black),
            dropdownColor: AppColor.bdtextField,
            value: selectedValue29,
            onChanged: (String? newValue) {
              setState(() {
                selectedValue29 = newValue!;
                if (selectedValue29 == 'Tidak') {
                  vP30 = false;
                }else{
                  vP30 = true;
                }
              });
            },
            onSaved: (value) {
              selectedValue29 = value.toString();
            },
            items: dropdownItems),
        SizedBox(
          height: 4.h,
        ),
      ],
    );
  }

  Column pertanyaan30() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Jika ya, darimana informasi tersebut diperoleh',
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14.sp,
              color: AppColor.textColor),
        ),
        DView.spaceHeight(8),
        TypeAheadFormField(
          textFieldConfiguration: TextFieldConfiguration(
            controller: this._typeValue30Controller,
            decoration: InputDecoration(
                counterText: '',
                fillColor: AppColor.bdtextField,
                filled: true,
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.withOpacity(0.1)),
                    borderRadius: BorderRadius.circular(5)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.withOpacity(0.1)),
                    borderRadius: BorderRadius.circular(5)),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 0.8),
                    borderRadius: BorderRadius.circular(5)),
                isDense: true, // Added this
                contentPadding: EdgeInsets.all(10.w)),
          ),
          suggestionsCallback: (pattern) {
            return Media.getSuggestions(pattern);
          },
          itemBuilder: (context, suggestion) {
            return ListTile(
              title: Text('${suggestion}'),
            );
          },
          transitionBuilder: (context, suggestionsBox, controller) {
            return suggestionsBox;
          },
          onSuggestionSelected: (suggestion) {
            this._typeValue30Controller.text = '${suggestion}';
          },
          validator: (value) {
            if (value!.isEmpty) {
              return 'Field ini harus diisi';
            }
          },
          onSaved: (value) => this.selectedValue30 = value!,
        ),
        SizedBox(
          height: 4.h,
        ),
      ],
    );
  }

  Column pertanyaan31() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Apakah keluarga pernah memperoleh/mendengar/melihat pesan/informasi program kependudukan, Keluarga Berencana dan Pembangunan Keluarga dari petugas?',
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14.sp,
              color: AppColor.textColor),
        ),
        DView.spaceHeight(8),
        DropdownButtonFormField(
            decoration: decorationField(),
            style: TextStyle(fontSize: 12.sp, color: Colors.black),
            dropdownColor: AppColor.bdtextField,
            value: selectedValue31,
            onChanged: (String? newValue) {
              setState(() {
                selectedValue31 = newValue!;
                if (selectedValue31 == 'Tidak') {
                  vP32 = false;
                }else{
                  vP32 = true;
                }
              });
            },
            onSaved: (value) {
              selectedValue31 = value.toString();
            },
            items: dropdownItems),
        SizedBox(
          height: 4.h,
        ),
      ],
    );
  }

  Column pertanyaan32() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Darimana keluarga menerima informasi tersebut?',
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14.sp,
              color: AppColor.textColor),
        ),
        DView.spaceHeight(8),
        TypeAheadFormField(
          textFieldConfiguration: TextFieldConfiguration(
            controller: this._typeValue32Controller,
            decoration: InputDecoration(
                counterText: '',
                fillColor: AppColor.bdtextField,
                filled: true,
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.withOpacity(0.1)),
                    borderRadius: BorderRadius.circular(5)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.withOpacity(0.1)),
                    borderRadius: BorderRadius.circular(5)),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 0.8),
                    borderRadius: BorderRadius.circular(5)),
                isDense: true, // Added this
                contentPadding: EdgeInsets.all(10.w)),
          ),
          suggestionsCallback: (pattern) {
            return Informasi.getSuggestions(pattern);
          },
          itemBuilder: (context, suggestion) {
            return ListTile(
              title: Text('${suggestion}'),
            );
          },
          transitionBuilder: (context, suggestionsBox, controller) {
            return suggestionsBox;
          },
          onSuggestionSelected: (suggestion) {
            if(suggestion.toString() == "10. Lainnya"){
              this._typeValue32Controller.text = '${suggestion}';
              setState(() {
                vPLainnya = true;
              });
            }else{
              setState(() {
                vPLainnya = false;
              });
            }
            
          },
          validator: (value) {
            if (value!.isEmpty) {
              return 'Field ini harus diisi';
            }
          },
          onSaved: (value) => this.selectedValue32 = value!,
        ),
        SizedBox(
          height: 4.h,
        ),
      ],
    );
  }

  Widget textFieldString(String label) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 12.sp,
              color: AppColor.textColor),
        ),
        DView.spaceHeight(8),
        TextFormField(
          decoration: InputDecoration(
              fillColor: AppColor.bdtextField,
              filled: true,
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.withOpacity(0.1)),
                  borderRadius: BorderRadius.circular(3)),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.withOpacity(0.1)),
                  borderRadius: BorderRadius.circular(3)),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(3),),
              errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.withOpacity(0.1),),
                  borderRadius: BorderRadius.circular(3)),
              focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red, width: 0.8),
                  borderRadius: BorderRadius.circular(3)),
              isDense: true, // Added this
              contentPadding: EdgeInsets.all(10.w)),
          enableInteractiveSelection: false,
          style: TextStyle(fontSize: 12.sp),
          validator: (value) {
            if (value!.isEmpty) {
              return 'field ini harus diisi harus diisi';
            }
          },
        ),
      ],
    );
  }

  Widget textFieldNumber(String label, int max) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 12.sp,
              color: AppColor.textColor),
        ),
        DView.spaceHeight(8),
        TextFormField(
          decoration: decorationField(),
          maxLength: max,
          keyboardType: TextInputType.number,
          enableInteractiveSelection: false,
          style: TextStyle(fontSize: 12.sp),
          validator: (value) {
            if (value!.isEmpty) {
              return 'field ini harus diisi';
            }
          },
        ),
      ],
    );
  }

  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(child: Text("Ya"), value: "Ya"),
      DropdownMenuItem(child: Text("Tidak"), value: "Tidak"),
    ];
    return menuItems;
  }

  List<DropdownMenuItem<String>> get dropdownItems2 {
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(child: Text("Ya"), value: "Ya"),
      DropdownMenuItem(child: Text("Tidak"), value: "Tidak"),
      DropdownMenuItem(child: Text("Tidak Berlaku"), value: "Tidak Berlaku"),
    ];
    return menuItems;
  }
}
