import 'package:d_view/d_view.dart';
import 'package:data_keluarga/model/keluarga/jkn.dart';
import 'package:data_keluarga/model/keluargaBerencana/alasan.dart';
import 'package:data_keluarga/model/keluargaBerencana/jenisKB.dart';
import 'package:data_keluarga/model/keluargaBerencana/ya_hamil.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:group_radio_button/group_radio_button.dart';

import '../config/AppColor.dart';
import '../model/city_servies.dart';
import '../model/keluargaBerencana/tidak_hamil.dart';
import 'form_pembangunan_keluarga.dart';
import 'keluarga.dart';

class FormKeluargaBerencanaPage2 extends StatefulWidget {
  @override
  State<FormKeluargaBerencanaPage2> createState() =>
      _FormKeluargaBerencanaPage2State();
}

class _FormKeluargaBerencanaPage2State
    extends State<FormKeluargaBerencanaPage2> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _formKey1 = GlobalKey<FormState>();
  final GlobalKey<FormState> _formKey2 = GlobalKey<FormState>();
  final GlobalKey<FormState> _formKey3 = GlobalKey<FormState>();
  final GlobalKey<FormState> _formKey4 = GlobalKey<FormState>();
  final GlobalKey<FormState> _formKey5 = GlobalKey<FormState>();
  final GlobalKey<FormState> _formKey6 = GlobalKey<FormState>();
  final GlobalKey<FormState> _formKey7 = GlobalKey<FormState>();
  final GlobalKey<FormState> _formKey8 = GlobalKey<FormState>();

  final TextEditingController _typeYaHamilController = TextEditingController();
  final TextEditingController _typeTidakHamilController =
      TextEditingController();
  final TextEditingController _typeAlasanController = TextEditingController();
  final TextEditingController _typeJenisKBController = TextEditingController();

  bool vP1 = true;
  bool vP2 = false;
  bool vP3 = false;
  bool vP4 = false;
  bool vP5 = false;
  bool vP6 = false;
  bool vP7 = false;
  bool vP8 = false;
  bool vP9 = false;

  // pertanyaan ke tiga
  bool vYaHamil = false;
  bool vTidakHamil = false;

  // pertanyaan ke empat
  bool vAlat = false;

  //pertanyaan ke lima
  bool vObat = false;

  bool _isChecked = true;

  String _singleValueP3 = 'no';
  String _singleValueP4 = 'no';
  String _singleValueP5 = 'no';

  //pertanyaan ke 9
  String _dataValue1 = 'Tidak';
  String _dataValue2 = 'Tidak';
  String _dataValue3 = 'Tidak';

  String? _selectedYaHamil,
      _selectedTidakHamil,
      _selectedAlasan,
      _selectedJenisKB;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DView.appBarLeft('Form Keluarga Berencana'),
      body: SafeArea(
        child: ListView(
          children: [
            Visibility(child: pertanyaan1(context), visible: vP1),
            Visibility(
              child: pertanyaan2(context),
              visible: vP2,
            ),
            Visibility(
              child: pertanyaan3(context),
              visible: vP3,
            ),
            Visibility(
              child: pertanyaan4(context),
              visible: vP4,
            ),
            Visibility(
              child: pertanyaan5(context),
              visible: vP5,
            ),
            Visibility(
              child: pertanyaan6(context),
              visible: vP6,
            ),
            Visibility(
              child: pertanyaan7(context),
              visible: vP7,
            ),
            Visibility(
              child: pertanyaan8(context),
              visible: vP8,
            ),
            Visibility(
              child: pertanyaan9(context),
              visible: vP9,
            )
          ],
        ),
      ),
    );
  }

  Column pertanyaan1(BuildContext context) {
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
                    key: this._formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Pertanyaan Ke-1',
                            style: GoogleFonts.inter(
                                fontSize: 18,
                                color: AppColor.textColor,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        textFieldNumber('Sudah berapa kali ibu melahirkan?', 2),
                        SizedBox(
                          height: 8.h,
                        ),
                        Text(
                          'Berapa jumlah anak yang masih hidup?',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14.sp,
                              color: AppColor.textColor),
                        ),
                        DView.spaceHeight(8),
                        Row(
                          children: [
                            SizedBox(
                              width: 4.w,
                            ),
                            Expanded(
                              flex: 1,
                              child: Text(
                                'Laki-laki',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14.sp,
                                    color: AppColor.textColor),
                              ),
                            ),
                            SizedBox(
                              width: 12.w,
                            ),
                            Expanded(
                              flex: 1,
                              child: Text(
                                'Perempuan',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14.sp,
                                    color: AppColor.textColor),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 4.h,
                        ),
                        Row(
                          children: [
                            textFieldrow(),
                            SizedBox(
                              width: 13.w,
                            ),
                            textFieldrow()
                          ],
                        ),
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
                                if (this._formKey.currentState!.validate()) {
                                  this._formKey.currentState!.save();
                                  setState(() {
                                    vP1 = false;
                                    vP2 = true;
                                  });

                                  // ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                  //     content: Text(
                                  //         'Your Favorite City is ${this._selectedCity}')));
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

  Column pertanyaan2(BuildContext context) {
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
                    key: this._formKey1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Pertanyaan Ke-2',
                            style: GoogleFonts.inter(
                                fontSize: 18,
                                color: AppColor.textColor,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        textFieldNumber(
                            'Menurut ibu, berapa jumlah anak ideal yang diinginkan?',
                            2),
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
                                        vP1 = true;
                                        vP2 = false;
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
                                          ._formKey1
                                          .currentState!
                                          .validate()) {
                                        this._formKey1.currentState!.save();
                                        setState(() {
                                          vP2 = false;
                                          vP3 = true;
                                        });

                                        // ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                        //     content: Text(
                                        //         'Your Favorite City is ${this._selectedCity}')));
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

  Column pertanyaan3(BuildContext context) {
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
                    key: this._formKey2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Pertanyaan Ke-3',
                            style: GoogleFonts.inter(
                                fontSize: 18,
                                color: AppColor.textColor,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Text(
                          'Apakah saat ini ibu sedang hamil?',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14.sp,
                              color: AppColor.textColor),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RadioButton(
                              description: "Ya",
                              value: "Ya",
                              groupValue: _singleValueP3,
                              onChanged: (value) => setState(() {
                                _singleValueP3 = value.toString();
                                vYaHamil = true;
                                vTidakHamil = false;
                              }),
                            ),
                            RadioButton(
                              description: "Tidak",
                              value: "Tidak",
                              groupValue: _singleValueP3,
                              onChanged: (value) => setState(() {
                                _singleValueP3 = value.toString();
                                vTidakHamil = true;
                                vYaHamil = false;
                              }),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Visibility(
                          visible: vYaHamil,
                          child: Text(
                            'saat mulai hamil apakah ibu memang ingin hamil saat itu?',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14.sp,
                                color: AppColor.textColor),
                          ),
                        ),
                        DView.spaceHeight(8),
                        Visibility(
                          visible: vYaHamil,
                          child: TypeAheadFormField(
                            textFieldConfiguration: TextFieldConfiguration(
                              controller: this._typeYaHamilController,
                              decoration: InputDecoration(
                                  counterText: '',
                                  fillColor: AppColor.bdtextField,
                                  filled: true,
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.grey.withOpacity(0.1)),
                                      borderRadius: BorderRadius.circular(5)),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.grey.withOpacity(0.1)),
                                      borderRadius: BorderRadius.circular(5)),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5)),
                                  errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.red, width: 0.8),
                                      borderRadius: BorderRadius.circular(5)),
                                  isDense: true, // Added this
                                  contentPadding: EdgeInsets.all(10.w)),
                            ),
                            suggestionsCallback: (pattern) {
                              return YaHamil.getSuggestions(pattern);
                            },
                            itemBuilder: (context, suggestion) {
                              return ListTile(
                                title: Text('${suggestion}'),
                              );
                            },
                            transitionBuilder:
                                (context, suggestionsBox, controller) {
                              return suggestionsBox;
                            },
                            onSuggestionSelected: (suggestion) {
                              this._typeYaHamilController.text =
                                  '${suggestion}';
                            },
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Field harus diisi';
                              }
                            },
                            onSaved: (value) => this._selectedYaHamil = value,
                          ),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Visibility(
                          visible: vTidakHamil,
                          child: Text(
                            'Apakah Ibu ingin menginginkan anak lagi??',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14.sp,
                                color: AppColor.textColor),
                          ),
                        ),
                        DView.spaceHeight(8),
                        Visibility(
                          visible: vTidakHamil,
                          child: TypeAheadFormField(
                            textFieldConfiguration: TextFieldConfiguration(
                              controller: this._typeTidakHamilController,
                              decoration: InputDecoration(
                                  counterText: '',
                                  fillColor: AppColor.bdtextField,
                                  filled: true,
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.grey.withOpacity(0.1)),
                                      borderRadius: BorderRadius.circular(5)),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.grey.withOpacity(0.1)),
                                      borderRadius: BorderRadius.circular(5)),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5)),
                                  errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.red, width: 0.8),
                                      borderRadius: BorderRadius.circular(5)),
                                  isDense: true, // Added this
                                  contentPadding: EdgeInsets.all(10.w)),
                            ),
                            suggestionsCallback: (pattern) {
                              return TidakHamil.getSuggestions(pattern);
                            },
                            itemBuilder: (context, suggestion) {
                              return ListTile(
                                title: Text('${suggestion}'),
                              );
                            },
                            transitionBuilder:
                                (context, suggestionsBox, controller) {
                              return suggestionsBox;
                            },
                            onSuggestionSelected: (suggestion) {
                              this._typeTidakHamilController.text =
                                  '${suggestion}';
                            },
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Field harus diisi';
                              }
                            },
                            onSaved: (value) =>
                                this._selectedTidakHamil = value,
                          ),
                        ),
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
                                        vP3 = false;
                                        vP2 = true;
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
                                          ._formKey2
                                          .currentState!
                                          .validate()) {
                                        this._formKey2.currentState!.save();
                                        setState(() {
                                          vP3 = false;
                                          if (_singleValueP3 == "Ya") {
                                            vP5 = true;
                                          } else {
                                            vP4 = true;
                                          }
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

  Column pertanyaan4(BuildContext context) {
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
                    key: this._formKey3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Pertanyaan Ke-4',
                            style: GoogleFonts.inter(
                                fontSize: 18,
                                color: AppColor.textColor,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Text(
                          'Apakah saat ini IBU atau suami menggunakan alat/obat/cara KB(Kontrasepsi)?',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14.sp,
                              color: AppColor.textColor),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RadioButton(
                              description: "Ya",
                              value: "Ya",
                              groupValue: _singleValueP4,
                              onChanged: (value) => setState(() {
                                _singleValueP4 = value.toString();
                                vAlat = true;
                              }),
                            ),
                            RadioButton(
                              description: "Tidak",
                              value: "Tidak",
                              groupValue: _singleValueP4,
                              onChanged: (value) => setState(() {
                                _singleValueP4 = value.toString();
                                vAlat = false;
                              }),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Visibility(
                          visible: vAlat,
                          child: Text(
                            'Kapan mulai menggunakan alat/Obat KB(Kontrasepsi) yang digunakan saat ini?',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: AppColor.textColor),
                          ),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Visibility(
                          visible: vAlat,
                          child: Row(
                            children: [
                              SizedBox(
                                width: 4.w,
                              ),
                              Expanded(
                                flex: 1,
                                child: Text(
                                  'Bulan ',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12.sp,
                                      color: AppColor.textColor),
                                ),
                              ),
                              SizedBox(
                                width: 12.w,
                              ),
                              Expanded(
                                flex: 1,
                                child: Text(
                                  'Tahun',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12.sp,
                                      color: AppColor.textColor),
                                ),
                              ),
                            ],
                          ),
                        ),
                        DView.spaceHeight(8),
                        Visibility(
                          visible: vAlat,
                          child: Row(
                            children: [
                              textFieldrow(),
                              SizedBox(
                                width: 13.w,
                              ),
                              tFieldRow4(),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
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
                                        vP4 = false;
                                        vP3 = true;
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
                                          ._formKey3
                                          .currentState!
                                          .validate()) {
                                        this._formKey3.currentState!.save();
                                        setState(() {
                                          vP4 = false;
                                          if (_singleValueP4 == "Ya") {
                                            vP7 = true;
                                          } else {
                                            vP5 = true;
                                          }
                                        });

                                        // ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                        //     content: Text(
                                        //         'Your Favorite City is ${this._selectedCity}')));
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

  Column pertanyaan5(BuildContext context) {
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
                    key: this._formKey4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Pertanyaan Ke-5',
                            style: GoogleFonts.inter(
                                fontSize: 18,
                                color: AppColor.textColor,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Text(
                          'Apakah dalam 12 bulan terakhir IBU atau SUAMI pernah menggunakan alat/obat/cara KB(Kontrasepsi)?',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14.sp,
                              color: AppColor.textColor),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RadioButton(
                              description: "Ya",
                              value: "Ya",
                              groupValue: _singleValueP5,
                              onChanged: (value) => setState(() {
                                _singleValueP5 = value.toString();
                                vObat = true;
                              }),
                            ),
                            RadioButton(
                              description: "Tidak",
                              value: "Tidak",
                              groupValue: _singleValueP5,
                              onChanged: (value) => setState(() {
                                _singleValueP5 = value.toString();
                                vObat = false;
                              }),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Visibility(
                          visible: vObat,
                          child: Text(
                            'Apakah dalam 12 bulan terakhir IBU atau SUAMI pernah menggunakan alat/obat/cara KB(Kontrasepsi)?',
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                color: AppColor.textColor),
                          ),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Visibility(
                          visible: vObat,
                          child: Row(
                            children: [
                              SizedBox(
                                width: 4.w,
                              ),
                              Expanded(
                                flex: 1,
                                child: Text(
                                  'Bulan ',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14.sp,
                                      color: AppColor.textColor),
                                ),
                              ),
                              SizedBox(
                                width: 12.w,
                              ),
                              Expanded(
                                flex: 1,
                                child: Text(
                                  'Tahun',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14.sp,
                                      color: AppColor.textColor),
                                ),
                              ),
                            ],
                          ),
                        ),
                        DView.spaceHeight(8),
                        Visibility(
                          visible: vObat,
                          child: Row(
                            children: [
                              textFieldrow(),
                              SizedBox(
                                width: 13.w,
                              ),
                              tFieldRow4(),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
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
                                        vP5 = false;
                                        vP4 = true;
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
                                          ._formKey4
                                          .currentState!
                                          .validate()) {
                                        this._formKey4.currentState!.save();
                                        setState(() {
                                          vP5 = false;
                                          if (_singleValueP4 == "Ya") {
                                          } else {
                                            vP6 = true;
                                          }
                                        });

                                        // ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                        //     content: Text(
                                        //         'Your Favorite City is ${this._selectedCity}')));
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

  Column pertanyaan6(BuildContext context) {
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
                    key: this._formKey5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Pertanyaan Ke-6',
                            style: GoogleFonts.inter(
                                fontSize: 18,
                                color: AppColor.textColor,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Text(
                          'Alasan utama tidak pakai KB atau putus pakai KB',
                          style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: AppColor.textColor),
                        ),
                        DView.spaceHeight(8),
                        TypeAheadFormField(
                          textFieldConfiguration: TextFieldConfiguration(
                            controller: this._typeAlasanController,
                            decoration: InputDecoration(
                                counterText: '',
                                fillColor: AppColor.bdtextField,
                                filled: true,
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.grey.withOpacity(0.1)),
                                    borderRadius: BorderRadius.circular(5)),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.grey.withOpacity(0.1)),
                                    borderRadius: BorderRadius.circular(5)),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5)),
                                errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.red, width: 0.8),
                                    borderRadius: BorderRadius.circular(5)),
                                isDense: true, // Added this
                                contentPadding: EdgeInsets.all(10.w)),
                          ),
                          suggestionsCallback: (pattern) {
                            return Alasan.getSuggestions(pattern);
                          },
                          itemBuilder: (context, suggestion) {
                            return ListTile(
                              title: Text('${suggestion}'),
                            );
                          },
                          transitionBuilder:
                              (context, suggestionsBox, controller) {
                            return suggestionsBox;
                          },
                          onSuggestionSelected: (suggestion) {
                            this._typeAlasanController.text = '${suggestion}';
                          },
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Field harus diisi';
                            }
                          },
                          onSaved: (value) => this._selectedAlasan = value,
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
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
                                        vP6 = false;
                                        vP5 = true;
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
                                          ._formKey5
                                          .currentState!
                                          .validate()) {
                                        this._formKey5.currentState!.save();
                                        setState(() {
                                          if (_singleValueP4 == "Tidak" &&
                                              _singleValueP5 == "Tidak") {
                                            Get.to(FormPembangunanKeluarga());
                                          } else {
                                            vP6 = false;
                                            vP7 = true;
                                          }
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

  Column pertanyaan7(BuildContext context) {
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
                    key: this._formKey6,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Pertanyaan Ke-7',
                            style: GoogleFonts.inter(
                                fontSize: 18,
                                color: AppColor.textColor,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Text(
                          'Jenis Alat/Obat/Cara KB(Kontrasepsi) yang dipakai saat ini atau terakhir dipakai?',
                          style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: AppColor.textColor),
                        ),
                        DView.spaceHeight(8),
                        TypeAheadFormField(
                          textFieldConfiguration: TextFieldConfiguration(
                            controller: this._typeJenisKBController,
                            decoration: InputDecoration(
                                counterText: '',
                                fillColor: AppColor.bdtextField,
                                filled: true,
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.grey.withOpacity(0.1)),
                                    borderRadius: BorderRadius.circular(5)),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.grey.withOpacity(0.1)),
                                    borderRadius: BorderRadius.circular(5)),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5)),
                                errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.red, width: 0.8),
                                    borderRadius: BorderRadius.circular(5)),
                                isDense: true, // Added this
                                contentPadding: EdgeInsets.all(10.w)),
                          ),
                          suggestionsCallback: (pattern) {
                            return JenisKB.getSuggestions(pattern);
                          },
                          itemBuilder: (context, suggestion) {
                            return ListTile(
                              title: Text('${suggestion}'),
                            );
                          },
                          transitionBuilder:
                              (context, suggestionsBox, controller) {
                            return suggestionsBox;
                          },
                          onSuggestionSelected: (suggestion) {
                            this._typeJenisKBController.text = '${suggestion}';
                          },
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Field harus diisi';
                            }
                          },
                          onSaved: (value) => this._selectedJenisKB = value,
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
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
                                        vP7 = false;
                                        vP6 = true;
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
                                          ._formKey6
                                          .currentState!
                                          .validate()) {
                                        this._formKey6.currentState!.save();
                                        setState(() {
                                          if (_selectedJenisKB ==
                                              "9. Tradisional") {
                                            Get.to(FormPembangunanKeluarga());
                                          } else {
                                            vP7 = false;
                                            vP8 = true;
                                          }
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

  Column pertanyaan8(BuildContext context) {
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
                    key: this._formKey7,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Pertanyaan Ke-8',
                            style: GoogleFonts.inter(
                                fontSize: 18,
                                color: AppColor.textColor,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        textFieldString(
                            'Sumber mendapatkan pelayanan Alat/Obat/Cara KB terakhir?'),
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
                                        vP8 = false;
                                        vP7 = true;
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
                                          ._formKey7
                                          .currentState!
                                          .validate()) {
                                        this._formKey7.currentState!.save();
                                        setState(() {
                                          vP8 = false;
                                          vP9 = true;
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

  Column pertanyaan9(BuildContext context) {
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
                    key: this._formKey8,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Pertanyaan Ke-9',
                            style: GoogleFonts.inter(
                                fontSize: 18,
                                color: AppColor.textColor,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Text(
                          'Pada saat pertama kali datang ke tempat pelayanan KB untuk mendapatkan Alat/Obat/Cara Kontrasepsi terakhir, apakah IBU atau SUAMI mendapatkan informasi tentang:',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: AppColor.textColor),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Text(
                          '1. Jenis-jenis Alat/Obat/Cara KB Kontrasepsi?',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14.sp,
                              color: AppColor.textColor),
                        ),
                        SizedBox(
                          height: 16.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RadioButton(
                              description: "Ya",
                              value: "Ya",
                              groupValue: _dataValue1,
                              onChanged: (value) => setState(() {
                                _dataValue1 = value.toString();
                              }),
                            ),
                            RadioButton(
                              description: "Tidak",
                              value: "Tidak",
                              groupValue: _dataValue1,
                              onChanged: (value) => setState(() {
                                _dataValue1 = value.toString();
                              }),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Text(
                          '2. Efek samping Alat/Obat/Cara KB Kontrasepsi yang dipakai?',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14.sp,
                              color: AppColor.textColor),
                        ),
                        SizedBox(
                          height: 16.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RadioButton(
                              description: "Ya",
                              value: "Ya",
                              groupValue: _dataValue2,
                              onChanged: (value) => setState(() {
                                _dataValue2 = value.toString();
                              }),
                            ),
                            RadioButton(
                              description: "Tidak",
                              value: "Tidak",
                              groupValue: _dataValue2,
                              onChanged: (value) => setState(() {
                                _dataValue2 = value.toString();
                              }),
                            ),
                          ],
                        ),
                        Text(
                          '3. Apa yang harus dilakukan apabila mengalami efek samping Alat/Obat/Cara KB Kontrasepsi yang dipakai?',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14.sp,
                              color: AppColor.textColor),
                        ),
                        SizedBox(
                          height: 16.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RadioButton(
                              description: "Ya",
                              value: "Ya",
                              groupValue: _dataValue3,
                              onChanged: (value) => setState(() {
                                _dataValue3 = value.toString();
                              }),
                            ),
                            RadioButton(
                              description: "Tidak",
                              value: "Tidak",
                              groupValue: _dataValue3,
                              onChanged: (value) => setState(() {
                                _dataValue3 = value.toString();
                              }),
                            ),
                          ],
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
                                        vP9 = false;
                                        vP8 = true;
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
                                        Get.to(FormPembangunanKeluarga());
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

  Widget textFieldNumber(String label, int max) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14.sp,
              color: AppColor.textColor),
        ),
        DView.spaceHeight(8),
        TextFormField(
          decoration: InputDecoration(
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
              contentPadding: EdgeInsets.all(10.w)),
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

  Widget textFieldString(String label) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14.sp,
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
}

class tFieldRow4 extends StatelessWidget {
  const tFieldRow4({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2 - 40.w,
      child: TextFormField(
        decoration: InputDecoration(
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
            contentPadding: EdgeInsets.all(10.w)),
        maxLength: 4,
        keyboardType: TextInputType.number,
        enableInteractiveSelection: false,
        style: TextStyle(fontSize: 12.sp),
        validator: (value) {
          if (value!.isEmpty) {
            return 'field ini harus diisi';
          }
        },
      ),
    );
  }
}

class textFieldrow extends StatelessWidget {
  const textFieldrow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2 - 40.w,
      child: TextFormField(
        decoration: InputDecoration(
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
            contentPadding: EdgeInsets.all(10.w)),
        maxLength: 2,
        keyboardType: TextInputType.number,
        enableInteractiveSelection: false,
        style: TextStyle(fontSize: 12.sp),
        validator: (value) {
          if (value!.isEmpty) {
            return 'field ini harus diisi';
          }
        },
      ),
    );
  }
}
