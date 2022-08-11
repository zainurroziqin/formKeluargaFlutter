import 'package:d_view/d_view.dart';
import 'package:data_keluarga/controller/c_date.dart';
import 'package:data_keluarga/model/keluarga/agama.dart';
import 'package:data_keluarga/model/keluarga/hubungan_keluarga.dart';
import 'package:data_keluarga/model/keluarga/jenis_kelamin.dart';
import 'package:data_keluarga/pages/keluarga.dart';
import 'package:data_keluarga/widget/sql_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import '../config/AppColor.dart';
import '../model/city_servies.dart';
import '../model/keluarga/jkn.dart';
import '../model/keluarga/keberadaan.dart';
import '../model/keluarga/pekerjaan.dart';
import '../model/keluarga/pendidikan.dart';
import '../model/keluarga/status_kawin.dart';

class FormEditKeluarga extends StatefulWidget {
  
  final String nik, nama, tanggalLahir, hubungan, jenisKelamin, agama, pendidikan, pekerjaan, statusKawin, jkn, keberadan; 
  final int id;
  FormEditKeluarga({
    required this.id,
    required this.nik,
    required this.nama,
    required this.tanggalLahir,
    required this.hubungan,
    required this.jenisKelamin,
    required this.agama,
    required this.pendidikan,
    required this.pekerjaan,
    required this.statusKawin,
    required this.jkn,
    required this.keberadan
  });

  @override
  State<FormEditKeluarga> createState() => _FormEditKeluargaState();
}

class _FormEditKeluargaState extends State<FormEditKeluarga> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _typeNIKController = TextEditingController();
  final TextEditingController _typeNamaController = TextEditingController();

  final TextEditingController _typeProvinsiController = TextEditingController();

  final TextEditingController _typeHubunganController = TextEditingController();

  final TextEditingController _typeAgamaController = TextEditingController();

  final TextEditingController _typePendidikanController =
      TextEditingController();

  final TextEditingController _typePekerjaanController =
      TextEditingController();

  final TextEditingController _typeStatusKawinController =
      TextEditingController();

  final TextEditingController _typeJenisKelaminController =
      TextEditingController();

  final TextEditingController _typeKeberadaanController =
      TextEditingController();

  final TextEditingController _typeJKNController = TextEditingController();

  final cDate = Get.put(CDate());

  DateTime today = DateTime.now();

  String? _selectedHubungan,
      _selectedJK,
      _selectedAgama,
      _selectedPendidikan,
      _selectedStatusKawin,
      _selectedJKN,
      _selectedPekerjaan,
      _selectedKeberadaan;

  

  bool dJK = true;

  bool dPendidikan = true;

  bool dPekerjaan = true;

  bool dStatusKawin = true;

  List<Map<String, dynamic>> keluarga = [];

  @override
  void initState() {
    super.initState(); // Loading the diary when the app starts
    _typeNIKController.text = widget.nik;
    _typeNamaController.text = widget.nama;
    cDate.setDate(widget.tanggalLahir);
    _typeHubunganController.text = widget.hubungan;
    _typeJenisKelaminController.text = widget.jenisKelamin;
    _typeAgamaController.text = widget.agama;
    _typePendidikanController.text = widget.pendidikan;
    _typePekerjaanController.text = widget.pekerjaan;
    _typeStatusKawinController.text = widget.statusKawin;
    _typeJKNController.text = widget.jkn;
    _typeKeberadaanController.text = widget.keberadan;
  }
  @override
  Widget build(BuildContext context) {
    print(keluarga);
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
                          textFieldNumber('NIK', _typeNIKController),
                          SizedBox(
                            height: 12.h,
                          ),
                          textFieldString('Nama', _typeNamaController),
                          SizedBox(
                            height: 12.h,
                          ),
                          Text(
                            'Tanggal Lahir',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: AppColor.textColor),
                          ),
                          Row(
                            children: [
                              Obx(() {
                                return Container(
                                  width: 80.w,
                                  height: 26.h,
                                  decoration: BoxDecoration(
                                      color: AppColor.bdtextField),
                                  child: Center(child: Text(cDate.date)),
                                );
                              }),
                              SizedBox(
                                width: 16.h,
                              ),
                              ElevatedButton.icon(
                                  onPressed: () async {
                                    DateTime? result = await showDatePicker(
                                        context: context,
                                        initialDate: DateTime.now(),
                                        firstDate: DateTime(1990, 01, 01),
                                        lastDate:
                                            DateTime(DateTime.now().year + 1));
                                    if (result != null) {
                                      cDate.setDate(DateFormat('yyyy-MM-dd')
                                          .format(result));

                                      DateTime birthDay =
                                          DateFormat('yyyy-MM-dd')
                                              .parse(cDate.date);
                                      int yearDiff = today.year - birthDay.year;
                                      int monthDiff =
                                          today.month - birthDay.month;
                                      int dayDiff = today.day - birthDay.day;

                                      if (yearDiff > 10 ||
                                          yearDiff == 10 &&
                                              monthDiff >= 0 &&
                                              dayDiff >= 0) {
                                        dStatusKawin = true;
                                        dPendidikan = true;
                                        dPekerjaan = true;
                                      } else {
                                        dStatusKawin = false;
                                        this._typeStatusKawinController.text =
                                            "1. Belum Kawin";
                                        if (yearDiff > 5 ||
                                            yearDiff == 5 &&
                                                monthDiff >= 0 &&
                                                dayDiff >= 0) {
                                          dPendidikan = true;
                                          dPekerjaan = true;
                                        } else {
                                          dPendidikan = false;
                                          dPekerjaan = false;
                                          this._typePendidikanController.text =
                                              "1. Tidak/Belum Sekolah";
                                          this._typePekerjaanController.text =
                                              "1. Tidak/Belum Bekerja";
                                        }
                                      }
                                    }
                                  },
                                  icon: const Icon(Icons.event),
                                  label: const Text('Pilih'))
                            ],
                          ),
                          SizedBox(
                            height: 12.h,
                          ),
                          Text(
                            'Hubungan Dengan Keluarga',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: AppColor.textColor),
                          ),
                          DView.spaceHeight(8),
                          TypeAheadFormField(
                              textFieldConfiguration: TextFieldConfiguration(
                                  controller: this._typeHubunganController,
                                  decoration: decorationField()),
                              suggestionsCallback: (pattern) {
                                return HubunganKeluarga.getSuggestions(pattern);
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
                                this._typeHubunganController.text =
                                    '${suggestion}';
                                if (_typeHubunganController.text ==
                                    '2. Istri') {
                                  this._typeJenisKelaminController.text =
                                      '2. Perempuan';
                                  this._typeStatusKawinController.text =
                                      '2. Kawin';
                                  dJK = false;
                                  dStatusKawin = false;
                                } else {
                                  dJK = true;
                                  dStatusKawin = true;
                                }
                              },
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'field ini harus diisi';
                                }
                              },
                              onSaved: (value) {
                                this._selectedHubungan = value;
                              }),
                          SizedBox(
                            height: 12.h,
                          ),
                          Text(
                            'Jenis Kelamin',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: AppColor.textColor),
                          ),
                          DView.spaceHeight(8),
                          TypeAheadFormField(
                            textFieldConfiguration: TextFieldConfiguration(
                                controller: this._typeJenisKelaminController,
                                decoration: decorationField(),
                                enabled: dJK),
                            suggestionsCallback: (pattern) {
                              return JenisKelamin.getSuggestions(pattern);
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
                              // if(this._typeHubunganController.text =='2. Istri'){
                              //   _typeJenisKelaminController.text = '2. Perempuan';
                              // }
                              this._typeJenisKelaminController.text =
                                  '${suggestion}';
                            },
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'field ini harus diisi';
                              }
                            },
                            onSaved: (value) => this._selectedJK = value,
                          ),
                          SizedBox(
                            height: 12.h,
                          ),
                          Text(
                            'Agama',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: AppColor.textColor),
                          ),
                          DView.spaceHeight(8),
                          TypeAheadFormField(
                            textFieldConfiguration: TextFieldConfiguration(
                                controller: this._typeAgamaController,
                                decoration: decorationField()),
                            suggestionsCallback: (pattern) {
                              return Agama.getSuggestions(pattern);
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
                              this._typeAgamaController.text = '${suggestion}';
                            },
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'field harus diisi';
                              }
                            },
                            onSaved: (value) => this._selectedAgama = value,
                          ),
                          SizedBox(
                            height: 12.h,
                          ),
                          Text(
                            'Pendidikan',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: AppColor.textColor),
                          ),
                          DView.spaceHeight(8),
                          TypeAheadFormField(
                            textFieldConfiguration: TextFieldConfiguration(
                                controller: this._typePendidikanController,
                                decoration: decorationField(),
                                enabled: dPendidikan),
                            suggestionsCallback: (pattern) {
                              return Pendidikan.getSuggestions(pattern);
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
                              this._typePendidikanController.text =
                                  '${suggestion}';
                            },
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'field harus diisi';
                              }
                            },
                            onSaved: (value) =>
                                this._selectedPendidikan = value,
                          ),
                          SizedBox(
                            height: 12.h,
                          ),
                          Text(
                            'Pekerjaan',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: AppColor.textColor),
                          ),
                          DView.spaceHeight(8),
                          TypeAheadFormField(
                            textFieldConfiguration: TextFieldConfiguration(
                                controller: this._typePekerjaanController,
                                decoration: decorationField(),
                                enabled: dPekerjaan),
                            suggestionsCallback: (pattern) {
                              return Pekerjaan.getSuggestions(pattern);
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
                              this._typePekerjaanController.text =
                                  '${suggestion}';
                            },
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'field harus diisi';
                              }
                            },
                            onSaved: (value) => this._selectedPekerjaan = value,
                          ),
                          SizedBox(
                            height: 12.h,
                          ),
                          Text(
                            'Status Kawin',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: AppColor.textColor),
                          ),
                          DView.spaceHeight(8),
                          TypeAheadFormField(
                            textFieldConfiguration: TextFieldConfiguration(
                                controller: this._typeStatusKawinController,
                                decoration: decorationField(),
                                enabled: dStatusKawin),
                            suggestionsCallback: (pattern) {
                              return StatusKawin.getSuggestions(pattern);
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
                              this._typeStatusKawinController.text =
                                  '${suggestion}';
                            },
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'field harus diisi';
                              }
                            },
                            onSaved: (value) =>
                                this._selectedStatusKawin = value,
                          ),
                          SizedBox(
                            height: 12.h,
                          ),
                          Text(
                            'JKN',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: AppColor.textColor),
                          ),
                          DView.spaceHeight(8),
                          TypeAheadFormField(
                            textFieldConfiguration: TextFieldConfiguration(
                                controller: this._typeJKNController,
                                decoration: decorationField()),
                            suggestionsCallback: (pattern) {
                              return JKN.getSuggestions(pattern);
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
                              this._typeJKNController.text = '${suggestion}';
                            },
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'field harus diisi';
                              }
                            },
                            onSaved: (value) => this._selectedJKN = value,
                          ),
                          SizedBox(
                            height: 12.h,
                          ),
                          Text(
                            'Keberadaan',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: AppColor.textColor),
                          ),
                          DView.spaceHeight(8),
                          TypeAheadFormField(
                            textFieldConfiguration: TextFieldConfiguration(
                                controller: this._typeKeberadaanController,
                                decoration: decorationField()),
                            suggestionsCallback: (pattern) {
                              return Keberadaan.getSuggestions(pattern);
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
                              this._typeKeberadaanController.text =
                                  '${suggestion}';
                            },
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'field harus diisi';
                              }
                            },
                            onSaved: (value) =>
                                this._selectedKeberadaan = value,
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Material(
                            color: Color(0XFF767AE7),
                            borderRadius: BorderRadius.circular(9),
                            child: InkWell(
                              onTap: () async{
                                if (this._formKey.currentState!.validate()) {
                                  this._formKey.currentState!.save();
                                  await editKeluarga();
                                  // Get.off(FormAlamat());
                                  // ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                  //     content: Text(
                                  //         'Your Favorite City is ${this._selectedProvinsi}')));
                                }
                              },
                              borderRadius: BorderRadius.circular(8),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 12,
                                ),
                                child: Center(
                                  child: Text('SIMPAN',
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

  Widget textFieldNumber(String label, TextEditingController controller) {
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
          controller: controller,
          decoration: decorationField(),
          maxLength: 16,
          keyboardType: TextInputType.number,
          enableInteractiveSelection: false,
          style: TextStyle(fontSize: 12.sp),
          validator: (value) {
            if (value!.isEmpty) {
              return 'field harus diisi';
            }
          },
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

  Widget textFieldString(String label, TextEditingController controller) {
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
          controller: controller,
          decoration: decorationField(),
          enableInteractiveSelection: false,
          style: TextStyle(fontSize: 12.sp),
          maxLength: 100,
          validator: (value) {
            if (value!.isEmpty) {
              return 'field ini harus diisi';
            }
          },
        ),
      ],
    );
  }

  //fungsi tambah data
  Future<void> editKeluarga() async {
    await SQLHelper.updateKeluarga(
        widget.id,
        _typeNIKController.text,
        _typeNamaController.text,
        cDate.date,
        _selectedHubungan!,
        _selectedJK!,
        _selectedAgama!,
        _selectedPendidikan!,
        _selectedPekerjaan!,
        _selectedStatusKawin!,
        _selectedJKN!,
        _selectedKeberadaan!);
    Get.to(KeluargaPage());
  }
}
