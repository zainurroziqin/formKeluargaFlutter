import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart' as sql;

class SQLHelper {
  //Fungsi Membuat Database
  static Future<void> createTables(sql.Database database) async {
    await database.execute("""
    CREATE TABLE keluarga(
      id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
      NIK CHAR(16),
      Nama CHAR(100),
      TanggalLahir CHAR(100),
      Hubungan CHAR(50),
      JenisKelamin CHAR(50),
      Agama CHAR(50),
      Pendidikan CHAR(50),
      Pekerjaan CHAR(50),
      StatusKawin CHAR(50),
      JKN CHAR(50),
      Keberadaan CHAR(50)
    )
    """);
  }

  static Future<sql.Database> db() async {
    return sql.openDatabase('keluarga.db', version: 1,
        onCreate: (sql.Database database, int version) async {
      await createTables(database);
    });
  }

  //Tambah data
  static Future<int> tambahKeluarga(
      String nik,
      String nama,
      String tanggallahir,
      String hubungan,
      String jenisKelamin,
      String agama,
      String pendidikan,
      String pekerjaan,
      String statusKawin,
      String jkn,
      String keberadaan) async {
    final db = await SQLHelper.db();
    final data = {
      'NIK': nik,
      'Nama': nama,
      'TanggalLahir': tanggallahir,
      'Hubungan': hubungan,
      'JenisKelamin': jenisKelamin,
      'Agama': agama,
      'Pendidikan': pendidikan,
      'Pekerjaan': pekerjaan,
      'StatusKawin': statusKawin,
      'JKN': jkn,
      'Keberadaan': keberadaan
    };
    return await db.insert('keluarga', data);
  }

  static Future<int> updateKeluarga(
      int id,
      String nik,
      String nama,
      String tanggallahir,
      String hubungan,
      String jenisKelamin,
      String agama,
      String pendidikan,
      String pekerjaan,
      String statusKawin,
      String jkn,
      String keberadaan) async {
    final db = await SQLHelper.db();
    final data = {
      'NIK': nik,
      'Nama': nama,
      'TanggalLahir': tanggallahir,
      'Hubungan': hubungan,
      'JenisKelamin': jenisKelamin,
      'Agama': agama,
      'Pendidikan': pendidikan,
      'Pekerjaan': pekerjaan,
      'StatusKawin': statusKawin,
      'JKN': jkn,
      'Keberadaan': keberadaan
    };
    return await db.update('keluarga', data, where: "id = ?", whereArgs: [id]);
  }

  //ambil data
  static Future<List<Map<String, dynamic>>> getKeluarga() async {
    final db = await SQLHelper.db();
    return db.query('keluarga');
  }

  static Future<List<Map<String, dynamic>>> getAnggotaKeluarga(int id) async {
    final db = await SQLHelper.db();
    return db.query('keluarga', where: "id = ?", whereArgs: [id], limit: 1);
  }

  static Future<void> deleteKeluarga(int id)async{
    final db = await SQLHelper.db();
    try{
      await db.delete("keluarga", where: "id = ?", whereArgs: [id]);
    }catch(e){
      debugPrint("Something went wrong when deleting an item: $e");
    }
  }
}
