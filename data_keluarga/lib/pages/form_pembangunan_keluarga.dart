import 'package:d_view/d_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../config/AppColor.dart';

class FormPembangunanKeluarga extends StatefulWidget {
  const FormPembangunanKeluarga({Key? key}) : super(key: key);

  @override
  State<FormPembangunanKeluarga> createState() =>
      _FormPembangunanKeluargaState();
}

class _FormPembangunanKeluargaState extends State<FormPembangunanKeluarga> {
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
                                  onTap: () {},
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

  InputDecoration decorationField() {
    return InputDecoration(
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
