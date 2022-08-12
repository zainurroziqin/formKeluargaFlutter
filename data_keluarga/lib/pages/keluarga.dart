import 'package:d_view/d_view.dart';
import 'package:data_keluarga/config/AppColor.dart';
import 'package:data_keluarga/pages/form_edit_keluarga.dart';
import 'package:data_keluarga/pages/form_keluarga.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../widget/sql_helper.dart';
import 'form_keluarga_berencana2.dart';

class KeluargaPage extends StatefulWidget {
  const KeluargaPage({Key? key}) : super(key: key);

  @override
  State<KeluargaPage> createState() => _KeluargaPageState();
}

class _KeluargaPageState extends State<KeluargaPage> {
  List<Map<String, dynamic>> keluarga = [];

  @override
  void initState() {
    super.initState();
    refreshKeluarga(); // Loading the diary when the app starts
  }

  void refreshKeluarga() async {
    final data = await SQLHelper.getKeluarga();
    setState(() {
      keluarga = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons
            .arrow_back), // you can put Icon as well, it accepts any widget.
        title: Text("Your Title"),
        actions: [
          IconButton(
            icon: Icon(Icons.arrow_forward),
            onPressed: () {
              Get.to(FormKeluargaBerencanaPage2());
            },
          ),
          SizedBox(
            width: 10.w,
          )
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 430.h,
              child: ListView.builder(
                  itemCount: keluarga.length,
                  itemBuilder: (context, index) {
                    return Card(
                      color: AppColor.bdtextField,
                      margin: EdgeInsets.all(10.w),
                      child: ListTile(
                        title: Text(keluarga[index]['Nama']),
                        subtitle: Text(keluarga[index]['NIK']),
                        trailing: SizedBox(
                          width: 100,
                          child: Row(
                            children: [
                              IconButton(
                                  onPressed: () {
                                    Get.to(FormEditKeluarga(
                                        id: keluarga[index]['id'],
                                        nik: keluarga[index]['NIK'],
                                        nama: keluarga[index]['Nama'],
                                        tanggalLahir: keluarga[index]
                                            ['TanggalLahir'],
                                        hubungan: keluarga[index]['Hubungan'],
                                        jenisKelamin: keluarga[index]
                                            ['JenisKelamin'],
                                        agama: keluarga[index]['Agama'],
                                        pendidikan: keluarga[index]
                                            ['Pendidikan'],
                                        pekerjaan: keluarga[index]['Pekerjaan'],
                                        statusKawin: keluarga[index]
                                            ['StatusKawin'],
                                        jkn: keluarga[index]['JKN'],
                                        keberadan: keluarga[index]
                                            ['Keberadaan']));
                                  },
                                  icon: Icon(Icons.edit)),
                              IconButton(
                                  onPressed: () {
                                    _deleteItem(keluarga[index]['id']);
                                  },
                                  icon: Icon(Icons.delete))
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(FormKeluarga());
        },
        backgroundColor: AppColor.bdtextField,
        child: const Icon(Icons.add),
      ),
    );
  }

  void _deleteItem(int id) async {
    await SQLHelper.deleteKeluarga(id);
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Text('hapus berhasil'),
    ));
    refreshKeluarga();
  }
}
