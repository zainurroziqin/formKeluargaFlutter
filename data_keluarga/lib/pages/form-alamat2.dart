import 'package:d_input/d_input.dart';
import 'package:d_view/d_view.dart';
import 'package:data_keluarga/config/AppColor.dart';
import 'package:data_keluarga/pages/form_keluarga.dart';
import 'package:data_keluarga/pages/keluarga.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../model/city_servies.dart';

class FormAlamat2 extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _typeAheadController = TextEditingController();
  String? _selectedCity;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DView.appBarLeft('Form Alamat'),
      body: SafeArea(
          child: ListView(
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
                padding: EdgeInsets.symmetric(horizontal: 32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 32.h,
                    ),
                    Text(
                      'Selamat datang',
                      style: GoogleFonts.inter(
                          fontSize: 18.sp,
                          color: AppColor.textColor,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    Text('Harap Mengisi alamat anda dengan benar'),
                    SizedBox(
                      height: 4.h,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 1.h,
                      decoration: BoxDecoration(color: Colors.grey),
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    Form(
                      key: this._formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Provinsi',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: AppColor.textColor),
                          ),
                          DView.spaceHeight(8),
                          TypeAheadFormField(
                            textFieldConfiguration: TextFieldConfiguration(
                              controller: this._typeAheadController,
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
                              return CitiesService.getSuggestions(pattern);
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
                              this._typeAheadController.text = '${suggestion}';
                            },
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Provinsi harus diisi';
                              }
                            },
                            onSaved: (value) => this._selectedCity = value,
                          ),
                          SizedBox(
                            height: 12.h,
                          ),
                          textFieldString('Kab/Kota'),
                          SizedBox(
                            height: 12.h,
                          ),
                          textFieldString('Kecamatan'),
                          SizedBox(
                            height: 12.h,
                          ),
                          textFieldString('Dusun/RW'),
                          SizedBox(
                            height: 12.h,
                          ),
                          textFieldNumber('RT'),
                          SizedBox(
                            height: 12.h,
                          ),
                          textFieldString('Alamat'),
                          SizedBox(
                            height: 12.h,
                          ),
                          textFieldNumber('No. Rumah'),
                          SizedBox(
                            height: 12.h,
                          ),
                          textFieldNumber('No Urut Keluarga'),
                          SizedBox(
                            height: 16.h,
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Material(
                            color: Color(0XFF767AE7),
                            borderRadius: BorderRadius.circular(9),
                            child: InkWell(
                              onTap: () {
                                if (this._formKey.currentState!.validate()) {
                                  this._formKey.currentState!.save();
                                  Get.off(KeluargaPage());
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
                          SizedBox(
                            height: 8.h,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      )),
    );
  }

  Widget textFieldNumber(String label) {
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
          maxLength: 3,
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
}
