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
  String selectedValue = 'Tidak';
  String selectedValue2 = 'Tidak';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DView.appBarLeft('Form Pembangunan Keluarga'),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 12.h,
            ),
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
            RaisedButton(
              onPressed: () {},
              child: Text('Tes'),
            ),
            Text(selectedValue),
            Text(selectedValue2),
          ],
        ),
      ),
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
