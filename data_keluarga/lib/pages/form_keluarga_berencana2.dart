import 'package:d_view/d_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../config/AppColor.dart';
import '../model/city_servies.dart';
import 'keluarga.dart';

class FormKeluargaBerencanaPage2 extends StatefulWidget {
  const FormKeluargaBerencanaPage2({Key? key}) : super(key: key);

  @override
  State<FormKeluargaBerencanaPage2> createState() =>
      _FormKeluargaBerencanaPage2State();
}

class _FormKeluargaBerencanaPage2State
    extends State<FormKeluargaBerencanaPage2> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _formKey1 = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DView.appBarLeft('Form Keluarga Berencana'),
      body: SafeArea(
        child: ListView(
          children: [
            pertanyaan1(context),
            SizedBox(
              height: 20.h,
            ),
            Visibility(child: pertanyaan2(context), visible: false,)
          ],
        ),
      ),
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
                          topLeft: Radius.circular(5),
                          topRight: Radius.circular(5))),
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
                              textFieldNumber(
                                  'Sudah berapa kali ibu melahirkan?', 2),
                              
                              SizedBox(
                                height: 16.h,
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.symmetric(horizontal: 24.w),
                                child: Material(
                                  color: Color(0XFF767AE7),
                                  borderRadius: BorderRadius.circular(9),
                                  child: InkWell(
                                    onTap: () {
                                      if (this
                                          ._formKey1
                                          .currentState!
                                          .validate()) {
                                        this._formKey.currentState!.save();
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
                                                .copyWith(
                                                    color: Colors.white)),
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
                              fontSize: 12.sp,
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
                                'Perempuan',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12.sp,
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
